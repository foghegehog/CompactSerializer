using System;
using System.Collections.Generic;

namespace SourcesForIL
{
    [Serializable]
    public class Entity
    {
        public Guid Id { get; set; }
        
         public string Name { get; set; }

        public string ShortName { get; set; }

        public string Description { get; set; }

        public char Label { get; set; }

        public byte Age { get; set; }

        public int Index { get; set; }

        public float Weigth { get; set; }

        public double Rating { get; set; }

        public decimal Price { get; set; }

        public bool IsVisible { get; set; }

        public short ShortIndex { get; set; }

        public long LongIndex { get; set; }

        public uint UnsignedIndex { get; set; }

        public ushort ShortUnsignedIndex { get; set; }

        public ulong LongUnsignedIndex { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime CreatedAtUtc { get; set; }

        public DateTime LastAccessed { get; set; }

        public DateTimeOffset ChangedAt { get; set; }

        public DateTimeOffset ChangedAtUtc { get; set; }

        public int[] References { get; set; }

        public List<short> Weeks { get; set; }

        public bool[] BitMap { get; set; }

        public Guid[] ChildrenIds { get; set; }

        public DateTime[] Schedule { get; set; }

        public DateTimeOffset[] Moments { get; set; }

        public List<string> Tags { get; set; }

        public decimal [] PricesHistory { get; set; }

        public Guid? AlternativeId { get; set; }
    }
}
