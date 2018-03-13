using System;
using System.IO;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public class DateTimeMembersInfo
    {
        public static MethodInfo KindProperty
        {
            get
            {
                return _kindPropertyLazy.Value;
            }
        }

        public static MethodInfo TicksProperty
        {
            get
            {
                return _ticksPropertyLazy.Value;
            }
        }

        public static ConstructorInfo Constructor
        {
            get
            {
                return _constructorLazy.Value;
            }
        }

        private static readonly Lazy<MethodInfo> _kindPropertyLazy = new Lazy<MethodInfo>(() =>
           ReflectionInfo.GetPropertyGetterMethodInfo<DateTime, DateTimeKind>(dt => dt.Kind));

        private static readonly Lazy<MethodInfo> _ticksPropertyLazy = new Lazy<MethodInfo>(() =>
           ReflectionInfo.GetPropertyGetterMethodInfo<DateTime, long>(dt => dt.Ticks));

        private static readonly Lazy<ConstructorInfo> _constructorLazy = new Lazy<ConstructorInfo>(() =>
            typeof(DateTime).GetConstructor(new [] {typeof(long), typeof(DateTimeKind)}));
    }
}
