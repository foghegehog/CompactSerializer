using System;
using System.Collections.Generic;
using System.Reflection;

public class NullableInfo
{
    private NullableInfo(Type underlyingType)
    {
        var nullable = typeof(Nullable<>).MakeGenericType(underlyingType);
        HasValueProperty = nullable.GetProperty("HasValue").GetMethod;
        ValueProperty = nullable.GetProperty("Value").GetMethod;
        Constructor = nullable.GetConstructor(new Type[] { underlyingType });
    }

    public MethodInfo HasValueProperty
    {
        get; private set;
    } 

    public MethodInfo ValueProperty
    {
        get; private set;
    }

    public ConstructorInfo Constructor
    {
        get; private set;
    }

    public static NullableInfo GetNullableInfo(Type underlyingType)
    {
        if (!_nullableInfos.ContainsKey(underlyingType))
        {
            _nullableInfos[underlyingType] = new NullableInfo(underlyingType);
        }

        return _nullableInfos[underlyingType];
    }

    private static readonly Dictionary<Type, NullableInfo> _nullableInfos = new Dictionary<Type, NullableInfo>();
}