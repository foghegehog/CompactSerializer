using System;
using System.Reflection;
using System.Linq;
using System.Runtime.InteropServices;
using System.Collections.Generic;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{       
    public static class TypesInfo
    {
        public static readonly Type[] PrimitiveTypes = new Type[]
        {
            typeof(bool),
            typeof(short),
            typeof(byte),
            typeof(int),
            typeof(long),
            typeof(ushort),
            typeof(uint),
            typeof(ulong),
            typeof(double),
            typeof(float),
            typeof(decimal),
            typeof(char)
        };

        public static readonly Type[] SystemTypes = PrimitiveTypes
            .Union(new [] {
                typeof(Guid),
                typeof(string),
                typeof(DateTime),
                typeof(DateTimeOffset)
            })
            .ToArray();

        public static int GetBytesCount(Type propertyType)
        {
            if (propertyType == typeof(DateTime))
            {
                return sizeof(long) + 1;
            }
            else if (propertyType == typeof(DateTimeOffset))
            {
                return sizeof(long) + sizeof(long);
            }
            else if (propertyType == typeof(bool))
            {
                return sizeof(bool);
            }
            else if(propertyType == typeof(char))
            {
                return sizeof(char);
            }
            else if (propertyType == typeof(decimal))
            {
                return 16;
            }
            else
            {
                return Marshal.SizeOf(propertyType);
            }
        }

        public static byte[] GetDecimalBytes(decimal value)
        {
            var bits = decimal.GetBits((decimal)value); 
            var bytes = new List<byte>(); 
            
            foreach (var bitsPart in bits) 
            { 
                bytes.AddRange(BitConverter.GetBytes(bitsPart)); 
            } 
                
            return bytes.ToArray(); 
        }

        public static decimal BytesToDecimal(byte[] bytes, int startIndex)
        {
            var valueBytes = bytes.Skip(startIndex).ToArray();
            if (valueBytes.Length != 16) 
                    throw new Exception("A decimal must be created from exactly 16 bytes"); 
                var bits = new Int32[4]; 
                for (var bitsPart = 0; bitsPart <= 15; bitsPart += 4) 
                { 
                    bits[bitsPart/4] = BitConverter.ToInt32(valueBytes, bitsPart); 
                } 
                return new decimal(bits); 
        }

        public static bool IsSupportedCollectionType(Type type, out Type enumerableType)
        {
            enumerableType = null;
            if (type.IsArray)
            {
                enumerableType = typeof(Array);
                return true;
            }

            if (!type.IsGenericType || type.GenericTypeArguments.Length != 1)
            {
                return false;
            }

            var genericEnumerableType = typeof(IEnumerable<>);
            enumerableType = genericEnumerableType.MakeGenericType(new [] { type.GenericTypeArguments.First() } );
            if (!enumerableType.IsAssignableFrom(type))
            {
                return false;
            }

            
            var hasSuitableConstructor = (type.GetConstructor(new [] { enumerableType }) != null);
            return hasSuitableConstructor;    
        }

        public static bool IsNullable(Type type)
        {
            if (!type.IsGenericType || type.GenericTypeArguments.Length != 1)
            {
                return false;
            }

            var underlyingType = type.GenericTypeArguments.Single();
            if (!underlyingType.IsValueType)
            {
                return false;
            }
            
            var nullableType = typeof(Nullable<>).MakeGenericType(underlyingType);
            return nullableType.IsAssignableFrom(type);
        }

        public static MethodInfo GetTypeMethodInfo
        {
            get
            {
                return _getTypeMethodLazy.Value;
            }
        }

        public static MethodInfo GetIsArrayMethodInfo
        {
            get
            {
                return _getIsArrayMethodLazy.Value;
            }
        }

        public static MethodInfo GetGenericTypeDefinitionMethodInfo
        {
            get
            {
                return _getGenericTypeDefinitionMethodLazy.Value;
            }
        }

        public static MethodInfo GetGenericArgumentsMethodInfo
        {
            get
            {
                return _getGenericArgumentsMethodLazy.Value;
            }
        }

        public static MethodInfo GetElementTypeMethodInfo
        {
            get
            {
                return _getElementTypeMethodLazy.Value;
            }
        }

        public static MethodInfo GetRuntimeTypeHandleMethodInfo
        {
            get
            {
                return _getTypeFromHandleMethodLazy.Value;
            }
        }

         public static MethodInfo GetDisposeMethodInfo
        {
            get
            {
                return _getDisposeMethodLazy.Value;
            }
        }

        private static readonly Lazy<MethodInfo> _getTypeMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<object, Type>(obj => obj.GetType()));

        private static readonly Lazy<MethodInfo> _getIsArrayMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetPropertyGetterMethodInfo<Type, bool>(type => type.IsArray));

        private static readonly Lazy<MethodInfo> _getGenericTypeDefinitionMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Type, Type>(type => type.GetGenericTypeDefinition()));

        private static readonly Lazy<MethodInfo> _getGenericArgumentsMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Type, Type[]>(type => type.GetGenericArguments()));

        private static readonly Lazy<MethodInfo> _getElementTypeMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Type, Type>(type => type.GetElementType()));

        private static readonly Lazy<MethodInfo> _getTypeFromHandleMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetStaticMethodInfo<Type>(_ => Type.GetTypeFromHandle(new RuntimeTypeHandle())));

        private static readonly Lazy<MethodInfo> _getDisposeMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetVoidMethodInfo<IDisposable>(disposable => disposable.Dispose()));
    }
}