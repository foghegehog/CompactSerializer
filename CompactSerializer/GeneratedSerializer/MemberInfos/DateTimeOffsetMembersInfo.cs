using System;
using System.IO;
using System.Reflection;

namespace CompactSerializer.GeneratedSerializer.MemberInfos
{
    public static class DateTimeOffsetMembersInfo
    {
        public static MethodInfo OffsetProperty
        {
            get
            {
                return _offsetPropertyLazy.Value;
            }
        }

        public static MethodInfo TicksProperty
        {
            get
            {
                return _ticksPropertyLazy.Value;
            }
        }

        public static ConstructorInfo TicksOffsetConstructor
        {
            get
            {
                return _ticksOffsetConstructorLazy.Value;
            }
        }

        private static readonly Lazy<MethodInfo> _offsetPropertyLazy = new Lazy<MethodInfo>(() =>
           ReflectionInfo.GetPropertyGetterMethodInfo<DateTimeOffset, TimeSpan>(dt => dt.Offset));

        private static readonly Lazy<MethodInfo> _ticksPropertyLazy = new Lazy<MethodInfo>(() =>
           ReflectionInfo.GetPropertyGetterMethodInfo<DateTimeOffset, long>(dt => dt.Ticks));

        private static readonly Lazy<ConstructorInfo> _ticksOffsetConstructorLazy = new Lazy<ConstructorInfo>(() =>
           typeof(DateTimeOffset).GetConstructor(new [] {typeof(long), typeof(TimeSpan)}));
    }
}