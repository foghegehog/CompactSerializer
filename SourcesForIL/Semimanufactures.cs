using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SourcesForIL
{
    public static class Semifactures
    {
            private static void WritePrimitiveTypeProperty(Stream stream, Entity entity)
            {
                var index = entity.Index;
                var valueBytes = BitConverter.GetBytes(index);
                stream.Write(valueBytes, 0, valueBytes.Length);
            }

            private static void WriteGuidProperty(Stream stream, Entity entity)
            {
                var id = entity.Id;
                var valueBytes = id.ToByteArray();
                stream.Write(valueBytes, 0, valueBytes.Length);
            }

            private static void WriteDateTimeProperty(Stream stream, Entity entity)
            {
                var dateTimeValue = entity.CreatedAt;
                var kind = dateTimeValue.Kind;
                stream.WriteByte((byte)kind);
                var ticks = dateTimeValue.Ticks;
                var dateTimeBytes = BitConverter.GetBytes(ticks);
                stream.Write(dateTimeBytes, 0, dateTimeBytes.Length);               
            }

            private static void WriteDateTimeOffsetProperty(Stream stream, Entity entity)
            {
                var dateTimeOffsetValue = entity.ChangedAt;
                var offsetBytes = BitConverter.GetBytes(dateTimeOffsetValue.Offset.Ticks);
                stream.Write(offsetBytes, 0, offsetBytes.Length);
                var dateTimeAsLong = dateTimeOffsetValue.Ticks;
                var dateTimeBytes = BitConverter.GetBytes(dateTimeAsLong);
                stream.Write(dateTimeBytes, 0, dateTimeBytes.Length);        
            }

            private static void WriteStringProperty(Stream stream, Entity entity)
            {
                var stringVal = (string)entity.Name;
                if (stringVal != null) 
                {
                    var stringBytes = Encoding.UTF8.GetBytes(stringVal);
                    var stringBytesCount = stringBytes.Length;
                    var countBytes = BitConverter.GetBytes(stringBytesCount);
                    stream.Write(countBytes, 0, countBytes.Length);
                    stream.Write(stringBytes, 0, stringBytes.Length);
                }
                else
                {
                    var countBytes = BitConverter.GetBytes(NullBytesCout);
                    stream.Write(countBytes, 0, countBytes.Length);
                }       
            }

            private static void WriteArrayProperty(Stream stream, Entity entity)
            {        
                var array = entity.References;
                if (array != null)
                {
                    var length = array.Length;
                    var arrayLengthBytes = BitConverter.GetBytes(length);
                    stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                        
                    for (var i = 0; i < length; i++)
                    {
                        var valueBytes = BitConverter.GetBytes(array[i]);
                        stream.Write(valueBytes, 0, valueBytes.Length);
                    }
                }
                else
                {
                    var arrayLengthBytes = BitConverter.GetBytes(-1);
                    stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                }
            }

            private static void WriteCollectionProperty(Stream stream, Entity entity)
            {        
                var collection = entity.Weeks;
                if (collection != null)
                {
                    var length = collection.Count;
                    var arrayLengthBytes = BitConverter.GetBytes(length);
                    stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                        
                    foreach(short element in collection)
                    {
                        var valueBytes = BitConverter.GetBytes(element);
                        stream.Write(valueBytes, 0, valueBytes.Length);
                    }
                }
                else
                {
                    var arrayLengthBytes = BitConverter.GetBytes(-1);
                    stream.Write(arrayLengthBytes, 0, arrayLengthBytes.Length);
                }
            }

            private static void WriteNullableProperty(Stream stream, Entity entity)
            {
                var nullableValue = entity.AlternativeId;
                var isNull = !nullableValue.HasValue;
                var isNullByte = (byte)(isNull ? 1 : 0);
                stream.WriteByte(isNullByte);
                if (!isNull)
                {
                    var value = nullableValue.Value;
                    var valueBytes = value.ToByteArray();
                    stream.Write(valueBytes, 0, valueBytes.Length);
                }
            }

            private static void ReadPrimitiveTypeProperty(Stream stream, Entity entity)
            {
                var valueBytes = new byte[4];
                stream.Read(valueBytes, 0, valueBytes.Length);
                entity.Index = BitConverter.ToInt32(valueBytes, 0);
            }

            private static void ReadGuidProperty(Stream stream, Entity entity)
            {
                var valueBytes = new byte[16];
                stream.Read(valueBytes, 0, valueBytes.Length);
                entity.Id = new Guid(valueBytes);
            }

            private static void ReadDateTimeValue(Stream stream, Entity entity)
            {
                var valueBytes = new byte[9];
                stream.Read(valueBytes, 0, valueBytes.Length);
                var kind = (DateTimeKind)valueBytes[0];
                var ticks = BitConverter.ToInt64(valueBytes, 1);
                entity.CreatedAt = new DateTime(ticks, kind);
            }    

            private static void ReadDateTimeOffsetProperty(Stream stream, Entity entity)
            {
                var valueBytes = new byte[16];
                stream.Read(valueBytes, 0, valueBytes.Length);
                var offset = TimeSpan.FromTicks(BitConverter.ToInt64(valueBytes, 0));
                var dateTimeAsLong = BitConverter.ToInt64(valueBytes, sizeof(long));
                entity.ChangedAt = new DateTimeOffset(dateTimeAsLong, offset);
            }   

            private static void ReadArrayProperty(Stream stream, Entity entity)
            {
                var lengthBytes = new byte[sizeof(int)];
                stream.Read(lengthBytes, 0, lengthBytes.Length);
                var arrayLength = BitConverter.ToInt32(lengthBytes, 0);
                if (arrayLength > -1)
                {
                    var array = new int[arrayLength];
                    for (var i = 0; i < arrayLength; i++)
                    {
                        var valueBytes = new byte[4];
                        stream.Read(valueBytes, 0, valueBytes.Length);
                        var element = BitConverter.ToInt32(valueBytes, 0);
                        array[i] = element;
                    }

                    entity.References = array;
                }
                else
                {
                    entity.References = null;
                }
            }

            private static void ReadCollectionProperty(Stream stream, Entity entity)
            {
                var lengthBytes = new byte[sizeof(int)];
                stream.Read(lengthBytes, 0, lengthBytes.Length);
                var arrayLength = BitConverter.ToInt32(lengthBytes, 0);
                if (arrayLength > -1)
                {
                    var collection = new List<short>();
                    var valueBytes = new byte[sizeof(short)];
                    for (var i = 0; i < arrayLength; i++)
                    {                        
                        stream.Read(valueBytes, 0, valueBytes.Length);
                        var element = BitConverter.ToInt16(valueBytes, 0);
                        collection.Add(element);
                    }

                    entity.Weeks = collection;
                }
                else
                {
                    entity.Weeks = null;
                }
            }

            private static void ReadNullableProperty(Stream stream, Entity entity)
            {
                var isNullByte = stream.ReadByte();
                var isNull = isNullByte == 1;
                if (isNull)
                {
                    entity.AlternativeId = null;
                }
                else
                {
                    var valueBytes = new byte[16];
                    stream.Read(valueBytes, 0, valueBytes.Length);
                    entity.AlternativeId = new Guid(valueBytes);
                }
            }

            private static void ReadStringValue(Stream stream, Entity entity)
            {
                var lengthBytes = new byte[4];
                stream.Read(lengthBytes, 0, lengthBytes.Length);
                var stringBytesCount = BitConverter.ToInt32(lengthBytes, 0);
                if (stringBytesCount == NullBytesCout)
                {
                    entity.Name = null;
                    return;
                }

                var stringBytes = new byte[stringBytesCount];
                stream.Read(stringBytes, 0, stringBytes.Length);
                entity.Name = Encoding.UTF8.GetString(stringBytes);
            }

            private const int NullBytesCout = -1;
    }
}