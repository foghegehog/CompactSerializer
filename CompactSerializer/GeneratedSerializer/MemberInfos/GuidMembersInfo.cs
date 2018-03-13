using System;
using System.IO;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public class GuidMembersInfo
    {
        public static MethodInfo ToByteArrayMethod
        {
            get { return _toByteArrayLazy.Value; }
        }

        public static ConstructorInfo ByteArrayConstructor
        {
            get { return _byteArrayConstructorLazy.Value; }
        }

        private static readonly Lazy<MethodInfo> _toByteArrayLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Guid, byte[]>(guid => guid.ToByteArray()));

        private static readonly Lazy<ConstructorInfo> _byteArrayConstructorLazy = new Lazy<ConstructorInfo>(() =>
            typeof(Guid).GetConstructor(new [] {typeof(byte[])}));
    }
}