//dotnet testusing System;
using Xunit;
using System;
using SourcesForIL;
using System.IO;
using CompactSerializer;
using CompactSerializer.GeneratedSerializer;
using System.Diagnostics;
using KellermanSoftware.CompareNetObjects;
using Newtonsoft.Json;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Collections.Generic;

namespace SerializationTests
{
    public class SerializationTests
    {
        [Fact]
        public void TestReflectionSerializer()
        {
            var originalEntity = new Entity
            {
                Name = "Name",
                ShortName = string.Empty,
                Description = null,
                Label = 'L',
                Age = 32,
                Index = -7,
                IsVisible = true,
                Price = 225.87M,
                Rating = 4.8,
                Weigth = 130,
                ShortIndex = short.MaxValue,
                LongIndex = long.MinValue,
                UnsignedIndex = uint.MaxValue,
                ShortUnsignedIndex = 25,
                LongUnsignedIndex = 11,
                Id = Guid.NewGuid(),
                CreatedAt = DateTime.Now,
                CreatedAtUtc = DateTime.UtcNow,
                LastAccessed = DateTime.MinValue,
                ChangedAt = DateTimeOffset.Now,
                ChangedAtUtc = DateTimeOffset.UtcNow,
                References = null,
                Weeks = new List<short>() { 3, 12, 24, 48, 53, 61 },
                PricesHistory = new decimal[] { 225.8M, 226M, 227.87M, 224.87M },
                BitMap = new bool[] { true, true, false, true, false, false, true, true },
                ChildrenIds = new Guid [] { Guid.NewGuid(), Guid.NewGuid(), Guid.NewGuid() },
                Schedule = new DateTime [] { DateTime.Now.AddDays(-1), DateTime.Now.AddMonths(2), DateTime.Now.AddYears(10) },
                Moments = new DateTimeOffset [] { DateTimeOffset.UtcNow.AddDays(-5), DateTimeOffset.Now.AddDays(10) },
                Tags = new List<string> {"The quick brown fox jumps over the lazy dog", "Reflection.Emit", string.Empty, "0" },
                AlternativeId = Guid.NewGuid()
            };

            Entity deserializedEntity = null;
            var typeVersion = string.Empty; 
            var deserializedVersion = string.Empty;
            using (var stream = new MemoryStream())
            {
                var serializer = new ReflectionCompactSerializer<Entity>();                
                typeVersion = serializer.GetTypeVersion();
                serializer.WriteVersion(stream, typeVersion);
                serializer.Serialize(originalEntity, stream);
                stream.Seek(0, SeekOrigin.Begin);
                deserializedVersion = serializer.ReadObjectVersion(stream);
                deserializedEntity = serializer.Deserialize(stream);
            }

            Assert.NotEmpty(typeVersion);
            Assert.Equal(typeVersion, deserializedVersion);

            var compare = new CompareLogic();
            var difference = compare.Compare(originalEntity, deserializedEntity);
            Assert.True(difference.AreEqual, difference.DifferencesString);
        }

        [Fact]
        public void TestGeneratedSerializer()
        {
            var originalEntity = new Entity
            {
                Name = "Name",
                ShortName = string.Empty,
                Description = null,
                Label = 'L',
                Age = 32,
                Index = -7,
                IsVisible = true,
                Price = 225.87M,
                Rating = 4.8,
                Weigth = 130,
                ShortIndex = short.MaxValue,
                LongIndex = long.MinValue,
                UnsignedIndex = uint.MaxValue,
                ShortUnsignedIndex = 25,
                LongUnsignedIndex = 11,
                Id = Guid.NewGuid(),
                CreatedAt = DateTime.Now,
                CreatedAtUtc = DateTime.UtcNow,
                LastAccessed = DateTime.MinValue,
                ChangedAt = DateTimeOffset.Now,
                ChangedAtUtc = DateTimeOffset.UtcNow,
                References = null,
                Weeks = new List<short>() { 3, 12, 24, 48, 53, 61 },
                PricesHistory = new decimal[] { 225.8M, 226M, 227.87M, 224.87M },
                BitMap = new bool[] { true, true, false, true, false, false, true, true },
                ChildrenIds = new Guid [] { Guid.NewGuid(), Guid.NewGuid(), Guid.NewGuid() },
                Schedule = new DateTime [] { DateTime.Now.AddDays(-1), DateTime.Now.AddMonths(2), DateTime.Now.AddYears(10) },
                Moments = new DateTimeOffset [] { DateTimeOffset.UtcNow.AddDays(-5), DateTimeOffset.Now.AddDays(10) },
                Tags = new List<string> {"The quick brown fox jumps over the lazy dog", "Reflection.Emit", string.Empty, "0" },
                AlternativeId = Guid.NewGuid()
            };

            Entity deserializedEntity = null;
            var serializer = EmitSerializerGenerator.Generate<Entity>();
            var version = serializer.GetTypeVersion();
            var deserializedVersion = string.Empty;
            using (var stream = new MemoryStream())
            {
                serializer.WriteVersion(stream, version);
                serializer.Serialize(originalEntity, stream);
                stream.Seek(0, SeekOrigin.Begin);
                deserializedVersion = serializer.ReadObjectVersion(stream);
                deserializedEntity = serializer.Deserialize(stream);
            }

            Assert.NotEmpty(deserializedVersion);
            Assert.Equal(deserializedVersion, version);

            var compare = new CompareLogic();
            var difference = compare.Compare(originalEntity, deserializedEntity);
            Assert.True(difference.AreEqual, difference.DifferencesString);
        }
    }
}