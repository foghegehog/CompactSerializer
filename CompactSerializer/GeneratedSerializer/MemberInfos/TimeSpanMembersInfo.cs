using System;
using System.IO;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class TimeSpanMembersInfo
    {
        public static MethodInfo TicksProperty
        {
            get
            {
                return _ticksPropertyLazy.Value;
            }
        }

        public static MethodInfo FromTicksMethod
        {
            get
            {
                return _fromTicksMethodLazy.Value;
            }
        }

        private static readonly Lazy<MethodInfo> _ticksPropertyLazy = new Lazy<MethodInfo>(() =>
           ReflectionInfo.GetPropertyGetterMethodInfo<TimeSpan, long>(dt => dt.Ticks));

        private static readonly Lazy<MethodInfo> _fromTicksMethodLazy = new Lazy<MethodInfo>(() =>
            ReflectionInfo.GetStaticMethodInfo<TimeSpan>(_ => TimeSpan.FromTicks(0)));
    }
}