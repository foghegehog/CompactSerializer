using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class EnumerablesInfo
    {
        public static MethodInfo GetToArrayMethod(Type enumerableType)
        {
            if (ToArrayMethodsMap.ContainsKey(enumerableType))
            {
                return ToArrayMethodsMap[enumerableType];
            }

            var genericMethod = typeof(Enumerable)
                .GetMethods()
                .First(m =>
                    m.IsGenericMethod &&
                    m.Name == "ToArray" &&
                    m.GetParameters()[0].ParameterType.GetGenericTypeDefinition()
                        == enumerableType.GetGenericTypeDefinition());
            var method = genericMethod.MakeGenericMethod(enumerableType.GenericTypeArguments[0]);
            ToArrayMethodsMap[enumerableType] = method;
            return method;
        }

        public static MethodInfo ArrayLengthGetter
        {
            get
            {
                return _arrayLengthGetter.Value;
            }
        }

        public static MethodInfo ArrayGetValueMethod
        {
            get
            {
                return _arrayGetValueMethodLazy.Value;
            }
        }       

        private static readonly Dictionary<Type, MethodInfo> ToArrayMethodsMap = new Dictionary<Type, MethodInfo>();

        private static readonly Lazy<MethodInfo> _arrayLengthGetter = new Lazy<MethodInfo>(() => 
            ReflectionInfo.GetPropertyGetterMethodInfo<Array, int>(array => array.Length));  

        private static readonly Lazy<MethodInfo> _arrayGetValueMethodLazy = new Lazy<MethodInfo>(() => 
            ReflectionInfo.GetPropertyGetterMethodInfo<Array, object>(array => array.GetValue(0)));  
    }
}