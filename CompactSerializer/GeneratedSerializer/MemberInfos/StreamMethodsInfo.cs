using System;
using System.IO;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public class StreamMethodsInfo
    {
        public static MethodInfo WriteByte
        {
            get { return _writeByteLazy.Value; }
        }

        public static MethodInfo Write
        {
            get { return _writeLazy.Value; }
        }

        public static MethodInfo ReadByte
        {
            get { return _readByteLazy.Value; }
        }

        public static MethodInfo Read
        {
            get { return _readLazy.Value; }
        }

        private static readonly Lazy<MethodInfo> _writeByteLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetVoidMethodInfo<Stream>(stream => stream.WriteByte(0)));

        private static readonly Lazy<MethodInfo> _writeLazy = new Lazy<MethodInfo>(() => 
            ReflectionInfo.GetVoidMethodInfo<Stream>(stream => stream.Write(new byte[0], 0, 0)));

        private static readonly Lazy<MethodInfo> _readByteLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Stream, int>(stream => stream.ReadByte()));

        private static readonly Lazy<MethodInfo> _readLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetMethodInfo<Stream, int>(stream => stream.Read(new byte[0], 0, 0)));
    }
}
