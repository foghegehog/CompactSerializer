using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public class GenericCollectionInfo
    {
        private GenericCollectionInfo(Type collectionType, Type elementType, ConstructorInfo constructor)
        {
            CollectionType = collectionType;
            ElementType = elementType;
            Constructor = constructor;

            _countPropertyLazy = new Lazy<MethodInfo>(() => CollectionType.GetProperty("Count").GetMethod);
            _addMethodLazy = new Lazy<MethodInfo>(() => CollectionType.GetMethod("Add", new Type[] { elementType }));
            _getEnumeratorMethodLazy = new Lazy<MethodInfo>(() => CollectionType.GetMethod("GetEnumerator"));

            _enumeratorMoveNextMethodLazy = new Lazy<MethodInfo>(() => EnumeratorType.GetMethod("MoveNext"));
            _enumeratorCurrentPropertyLazy = new Lazy<MethodInfo>(() => EnumeratorType.GetProperty("Current").GetMethod);
        }

        public static GenericCollectionInfo GetCollectionInfo(Type collectionType)
        {
            if (!_collectionsInfos.ContainsKey(collectionType))
            {
                var elementType = collectionType.GenericTypeArguments.Single();
                var constructor = collectionType.GetConstructor(new Type[0]);
                _collectionsInfos[collectionType] = new GenericCollectionInfo(collectionType, elementType, constructor);
            }

            return _collectionsInfos[collectionType];
        }

        public static bool IsICollectionType(Type collectionType)
        {
            var genericEnumerableType = typeof(ICollection<>);
            if (collectionType.GenericTypeArguments.Count() != 1)
            {
                return false;
            }

            var elementType = collectionType.GenericTypeArguments.Single();
            var expectedType = genericEnumerableType.MakeGenericType(new [] { elementType } );

            if (!expectedType.IsAssignableFrom(collectionType))
            {
                return false;
            }

            var constructor = collectionType.GetConstructor(new Type[0]);
            if ( constructor == null)
            {
                return false;
            }

            _collectionsInfos[collectionType] = new GenericCollectionInfo(collectionType, elementType, constructor);
            return true;
        }

        public Type CollectionType
        {
            get; private set;
        }

        public Type ElementType
        {
            get; private set;
        }

        public ConstructorInfo Constructor
        {
            get; private set;
        }

        public MethodInfo CountPropertyGetter
        {
            get
            {
                return _countPropertyLazy.Value;
            }
        }

        public MethodInfo AddMethod
        {
            get
            {
                return _addMethodLazy.Value;
            }
        }
        
        public MethodInfo GetEnumeratorMethod
        {
            get 
            {
                return _getEnumeratorMethodLazy.Value;  
            }
        }

        public Type EnumeratorType
        {
            get 
            {
                return _getEnumeratorMethodLazy.Value.ReturnType;  
            }
        }

        public MethodInfo EnumeratorMoveNextMethod
        {
            get 
            {
                return _enumeratorMoveNextMethodLazy.Value;
            }
        }

        public MethodInfo EnumeratorCurrentProperty
        {
            get 
            {
                return _enumeratorCurrentPropertyLazy.Value;
            }
        }

        private readonly Lazy<MethodInfo> _countPropertyLazy;

        private readonly Lazy<MethodInfo> _addMethodLazy;

        private readonly Lazy<MethodInfo> _getEnumeratorMethodLazy;

        private readonly Lazy<MethodInfo> _enumeratorMoveNextMethodLazy;

        private readonly Lazy<MethodInfo> _enumeratorCurrentPropertyLazy;

        private static readonly Dictionary<Type, GenericCollectionInfo> _collectionsInfos = new Dictionary<Type, GenericCollectionInfo>();

    }
}