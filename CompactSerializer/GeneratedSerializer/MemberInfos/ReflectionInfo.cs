using System;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Runtime.InteropServices;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class ReflectionInfo
    {
        public static MethodInfo GetVoidMethodInfo<TMethodOwner>(Expression<Action<TMethodOwner>> expression)
        {
            var methodCallExpression = (MethodCallExpression)expression.Body;
            return methodCallExpression.Method;
        }

        public static MethodInfo GetMethodInfo<TMethodOwner, TMethodReturn>(Expression<Func<TMethodOwner, TMethodReturn>> expression)
        {
            var methodCallExpression = (MethodCallExpression)expression.Body;
            return methodCallExpression.Method;
        }

        public static MethodInfo GetStaticMethodInfo<TMethodReturn>(Expression<Func<object, TMethodReturn>> expression)
        {
            var methodCallExpression = (MethodCallExpression)expression.Body;
            return methodCallExpression.Method;
        }

        public static MethodInfo GetPropertyGetterMethodInfo<TPropertyOwner, TPropertyType>(
            Expression<Func<TPropertyOwner, TPropertyType>> expression)
        {
            var propertyAccessExpression = (MemberExpression)expression.Body;
            var propertyInfo = (PropertyInfo)propertyAccessExpression.Member;
            return propertyInfo.GetMethod;
        } 
    }
}
