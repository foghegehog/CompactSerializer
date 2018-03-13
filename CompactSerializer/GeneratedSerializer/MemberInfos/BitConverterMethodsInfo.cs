using System;
using System.Collections.Generic;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class BitConverterMethodsInfo
    {
        public static MethodInfo ChooseGetBytesOverloadByType(Type type)
        {
            if (_getBytesMethods.ContainsKey(type))
            {
                return _getBytesMethods[type];
            }

            if (type == typeof(decimal))
            {
                var decimalMethod = ReflectionInfo.GetStaticMethodInfo(_ => TypesInfo.GetDecimalBytes(0M));
                _getBytesMethods[type] = decimalMethod;
                return decimalMethod;
            }

            var method = typeof(BitConverter).GetMethod(MethodName, new Type[] { type });
            if (method == null)
            {
                throw new InvalidOperationException("No overload for parameter of type " + type.Name);
            }

            _getBytesMethods[type] = method;
            return method;
        }

        public static MethodInfo ChooseToTypeMethod(Type targetType)
        {
            return _toTypeMethods[targetType];
        }

        private const string MethodName = "GetBytes";

        private static readonly Dictionary<Type, MethodInfo> _getBytesMethods = new Dictionary<Type, MethodInfo>();

        private static readonly Dictionary<Type, MethodInfo> _toTypeMethods = new Dictionary<Type, MethodInfo>()
        {
            { typeof(bool), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToBoolean(_dummyByteArray, 0)) },
            { typeof(short), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToInt16(_dummyByteArray, 0)) },
            { typeof(int), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToInt32(_dummyByteArray, 0)) },
            { typeof(long), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToInt64(_dummyByteArray, 0)) },
            { typeof(ushort), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToUInt16(_dummyByteArray, 0)) },
            { typeof(uint), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToUInt32(_dummyByteArray, 0)) },
            { typeof(ulong), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToUInt64(_dummyByteArray, 0)) },
            { typeof(double), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToDouble(_dummyByteArray, 0)) },
            { typeof(float), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToSingle(_dummyByteArray, 0)) },
            { typeof(char), ReflectionInfo.GetStaticMethodInfo(_ => BitConverter.ToChar(_dummyByteArray, 0)) },
            { typeof(decimal), ReflectionInfo.GetStaticMethodInfo(_ => TypesInfo.BytesToDecimal(_dummyByteArray, 0)) }
        };

        private static readonly byte[] _dummyByteArray = new byte[0];
    }
}
