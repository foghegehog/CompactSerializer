using System;
using System.IO;
using System.Reflection;
using System.Text;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class EncodingMembersInfo
    {
        public static MethodInfo EncodingGetter
        {
            get
            {
                return _utf8PropertyGetterLazy.Value;
            }
        }

        public static MethodInfo GetBytesMethod
        {
            get
            {
                return _getBytesMethodLazy.Value;
            }
        }

         public static MethodInfo GetStringMethod
        {
            get
            {
                return _getStringMethodLazy.Value;
            }
        }

        private static readonly Lazy<MethodInfo> _utf8PropertyGetterLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetPropertyGetterMethodInfo<Encoding, Encoding>(_ => Encoding.UTF8));

        private static readonly Lazy<MethodInfo> _getBytesMethodLazy = new Lazy<MethodInfo>(() => 
            ReflectionInfo.GetMethodInfo<Encoding, byte[]>(encoding => encoding.GetBytes(string.Empty)));

        private static readonly Lazy<MethodInfo> _getStringMethodLazy = new Lazy<MethodInfo>(() => 
            ReflectionInfo.GetMethodInfo<Encoding, string>(encoding => encoding.GetString(new byte[0])));
    }
}