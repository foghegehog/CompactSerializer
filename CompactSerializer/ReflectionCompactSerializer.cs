using System.IO;
using System;
using System.Text;
using System.Reflection;
using System.Collections.Generic;
using CompactSerializer.GeneratedSerializer.MemberInfos;
using System.Linq;

namespace CompactSerializer
{
    public class ReflectionCompactSerializer<TObject> : CompactSerializerBase<TObject>
        where TObject: class, new ()
    {

        public ReflectionCompactSerializer()
        {

        }

        public override void WriteVersion(Stream stream, string version)
        {
            WriteString(stream, version);
        }

        public override string ReadObjectVersion(Stream stream)
        {
            return ReadString(stream);
        }

        public override void Serialize(TObject theObject, Stream stream)
        {
            // properties
            foreach (var property in _properties)
            {
                Type enumerableType;
                if (TypesInfo.SystemTypes.Contains(property.PropertyType))
                {
                    WriteObjectProperty(stream, property, theObject);
                }
                else if (TypesInfo.IsNullable(property.PropertyType))
                {
                    WriteObjectNullableProperty(stream, property, theObject);
                }
                else if (TypesInfo.IsSupportedCollectionType(property.PropertyType, out enumerableType))
                {
                    var elementType = enumerableType == typeof(Array)
                        ? property.PropertyType.GetElementType()
                        : enumerableType.GetGenericArguments()[0];
                    var array = enumerableType == typeof(Array) 
                        ? (Array)property.GetValue(theObject) 
                        : (Array)EnumerablesInfo
                            .GetToArrayMethod(enumerableType)
                            .Invoke(null, new object[] { property.GetValue(theObject)});
                    if (array != null)
                    {
                        var arrayLengthBytes = BitConverter.GetBytes(array.Length);
                        stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                        
                        for (var i = 0; i < array.Length; i++)
                        {
                            var arrayValue = array.GetValue(i);
                            WriteValueBytes(stream, arrayValue, elementType);
                        }
                    }
                    else
                    {
                        var arrayLengthBytes = BitConverter.GetBytes(NullBytesCout);
                        stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                    }
                }
                else
                {
                    throw new NotImplementedException();
                }
            }
        }

        public override TObject Deserialize(Stream stream)
        {
            var theObject = Activator.CreateInstance<TObject>();
            Type enumerableType;
            foreach (var property in _properties)
            {
                if (TypesInfo.SystemTypes.Contains(property.PropertyType))
                {
                    ReadObjectProperty(stream, property, theObject);
                }
                else if (TypesInfo.IsNullable(property.PropertyType))
                {
                    ReadObjectNullableProperty(stream, property, theObject);
                }
                else if (TypesInfo.IsSupportedCollectionType(property.PropertyType, out enumerableType))
                {
                    var lengthBytes = new byte[sizeof(int)];
                    stream.Read(lengthBytes, 0, lengthBytes.Length);
                    var arrayLength = BitConverter.ToInt32(lengthBytes, 0);
                    if (arrayLength > NullBytesCout)
                    {
                        var elementType = enumerableType == typeof(Array)
                            ? property.PropertyType.GetElementType()
                            : enumerableType.GetGenericArguments()[0];

                        var array = Array.CreateInstance(elementType, arrayLength);
                        for (var i = 0; i < arrayLength; i++)
                        {
                            var element = ReadValue(stream, elementType);
                            array.SetValue(element, i);
                        }
  
                        if (enumerableType == typeof(Array))
                        {
                            property.SetValue(theObject, array);
                        }
                        else
                        {
                            var ctor = property.PropertyType.GetConstructor(new [] { enumerableType });
                            var enumerable = ctor.Invoke(new [] { array });
                            property.SetValue(theObject, enumerable);
                        }
                    }
                }
                else
                {
                    throw new NotImplementedException();
                }
            }

            return theObject;
        }

        private void WriteObjectProperty(Stream stream, PropertyInfo property, TObject theObject)
        {
            var value = property.GetValue(theObject);
            WriteValueBytes(stream, value, property.PropertyType);
        }

        private void WriteObjectNullableProperty(Stream stream, PropertyInfo property, TObject theObject)
        {
            var nullableValue = property.GetValue(theObject);
            var isNull = (nullableValue == null);
            var isNullByte = Convert.ToByte(isNull);
            stream.WriteByte(isNullByte);
            if (isNull)
            {
                return;
            }

            var underlyingType = property.PropertyType.GetGenericArguments().Single();
            var value = Convert.ChangeType(nullableValue, underlyingType);
            WriteValueBytes(stream, value, underlyingType);
        }

        private void WriteValueBytes(Stream stream, object value, Type type)
        {
            if (type == typeof(byte))
            {
                stream.WriteByte((byte)value);
            }
            else if (type == typeof(bool))
            {
                var bytes = BitConverter.GetBytes((bool)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(short))
            {
                var bytes = BitConverter.GetBytes((short)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(int))
            {
                var bytes = BitConverter.GetBytes((int)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(long))
            {
                var bytes = BitConverter.GetBytes((long)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(ushort))
            {
                var bytes = BitConverter.GetBytes((ushort)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(uint))
            {
                var bytes = BitConverter.GetBytes((uint)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(ulong))
            {
                var bytes = BitConverter.GetBytes((ulong)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(double))
            {
                var bytes = BitConverter.GetBytes((double)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(decimal))
            {
                var bytes = TypesInfo.GetDecimalBytes((decimal)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(float))
            {
                var bytes = BitConverter.GetBytes((float)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(char))
            {
                var bytes = BitConverter.GetBytes((char)value);
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(Guid))
            {
                var bytes = ((Guid)value).ToByteArray();
                stream.Write(bytes, 0, bytes.Length);
            }
            else if (type == typeof(string))
            {
                WriteString(stream, (string)value);
            }
            else if (type == typeof(DateTime))
            {
                var dateTimeValue = ((DateTime)value);
                var kind = dateTimeValue.Kind;
                stream.WriteByte((byte)kind);
                var dateTimeBytes = BitConverter.GetBytes(((DateTime)value).Ticks);
                stream.Write(dateTimeBytes, 0, dateTimeBytes.Length);
            }
            else if (type == typeof(DateTimeOffset))
            {
                var dateTimeOffsetValue = ((DateTimeOffset)value);
                var offsetBytes = BitConverter.GetBytes(dateTimeOffsetValue.Offset.Ticks);
                stream.Write(offsetBytes, 0, offsetBytes.Length);
                var dateTimeAsLong = dateTimeOffsetValue.Ticks;
                var dateTimeBytes = BitConverter.GetBytes(dateTimeAsLong);
                stream.Write(dateTimeBytes, 0, dateTimeBytes.Length);
            }
            else
            {
                throw new NotImplementedException("Only primitive types are supported");
            }
        }

        private void ReadObjectProperty(Stream stream, PropertyInfo property, TObject theObject)
        {
            var value = ReadValue(stream, property.PropertyType);
            property.SetValue(theObject, value);
        }

        private void ReadObjectNullableProperty(Stream stream, PropertyInfo property, TObject theObject)
        {
            var isNullByte = stream.ReadByte();
            var isNull = Convert.ToBoolean(isNullByte);
            if (isNull)
            {
                property.SetValue(theObject, null);
                return;
            }

            var underlyingType = property.PropertyType.GetGenericArguments().Single();
            var value = ReadValue(stream, underlyingType);
            property.SetValue(theObject, value);
        }

        private object ReadValue(Stream stream, Type type)
        {
            if (type == typeof(byte))
            {
                return (byte)stream.ReadByte();
            }
            if (type == typeof(string))
            {
                return ReadString(stream);
            }

            var bytesCount = TypesInfo.GetBytesCount(type);
            var valueBytes = new byte[bytesCount];
            stream.Read(valueBytes, 0, valueBytes.Length);

            if (type == typeof(bool))
            {
                return BitConverter.ToBoolean(valueBytes, 0);
            }
            else if (type == typeof(short))
            {
                return BitConverter.ToInt16(valueBytes, 0);
            }
            else if (type == typeof(int))
            {
                return BitConverter.ToInt32(valueBytes, 0);
            }
            else if (type == typeof(long))
            {
                return BitConverter.ToInt64(valueBytes, 0);
            }
            else if (type == typeof(ushort))
            {
                return BitConverter.ToUInt16(valueBytes, 0);
            }
            else if (type == typeof(uint))
            {
                return BitConverter.ToUInt32(valueBytes, 0);
            }
            else if (type == typeof(ulong))
            {
                return BitConverter.ToUInt64(valueBytes, 0);
            }
            else if (type == typeof(double))
            {
                return BitConverter.ToDouble(valueBytes, 0);
            }
            else if (type == typeof(decimal))
            {
                return TypesInfo.BytesToDecimal(valueBytes, 0);
            }
            else if (type == typeof(float))
            {
                return BitConverter.ToSingle(valueBytes, 0);
            }
            else if (type == typeof(char))
            {
                return BitConverter.ToChar(valueBytes, 0);
            }
            else if (type == typeof(Guid))
            {
                return new Guid(valueBytes);
            }
            else if (type == typeof(DateTime))
            {
                var kind = (DateTimeKind)valueBytes[0];
                var ticks = BitConverter.ToInt64(valueBytes, 1);
                return new DateTime(ticks, kind);
            }
            else if (type == typeof(DateTimeOffset))
            {
                var offset = TimeSpan.FromTicks(BitConverter.ToInt64(valueBytes, 0));
                var dateTimeAsLong = BitConverter.ToInt64(valueBytes, sizeof(long));
                return new DateTimeOffset(dateTimeAsLong, offset);
            }

            throw new NotImplementedException("Only primitive types are supported");
        }

        private readonly PropertyInfo[] _properties = typeof(TObject).GetProperties(BindingFlags.Instance | BindingFlags.Public);
    }
}
