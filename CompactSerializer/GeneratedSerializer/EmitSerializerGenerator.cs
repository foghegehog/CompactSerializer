using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;
using CompactSerializer.GeneratedSerializer.MemberInfos;

namespace CompactSerializer.GeneratedSerializer
{
    public static class EmitSerializerGenerator 
    {
        public static EmitSerializer<TObject> Generate<TObject>()
            where TObject : class, new()
        {
            var propertiesWriter = new DynamicMethod(
                "WriteProperties",
                null,
                new Type[] { typeof(Stream), typeof(TObject) },
                typeof(EmitSerializer<TObject>));
            var writerIlGenerator = propertiesWriter.GetILGenerator();
            var writerEmitter = new CodeEmitter(writerIlGenerator);

             var propertiesReader = new DynamicMethod(
                "ReadProperties",
                null,
                new Type[] { typeof(Stream), typeof(TObject) },
                typeof(EmitSerializer<TObject>));
            var readerIlGenerator = propertiesReader.GetILGenerator();
            var readerEmitter = new CodeEmitter(readerIlGenerator);

            var properties = typeof(TObject).GetProperties(BindingFlags.Instance | BindingFlags.Public);
            foreach(var property in properties)
            {
                if (property.PropertyType == typeof(byte))
                {
                    writerEmitter.EmitWriteBytePropertyCode(property);
                    readerEmitter.EmitReadBytePropertyCode(property);
                }
                else if(TypesInfo.PrimitiveTypes.Contains(property.PropertyType))
                {
                    writerEmitter.EmitWritePrimitiveTypePropertyCode(property);
                    readerEmitter.EmitReadPrimitiveTypePropertyCode(property);
                }
                else if (property.PropertyType == typeof(Guid))
                {
                    writerEmitter.EmitWriteGuidPropertyCode(property);
                    readerEmitter.EmitReadGuidPropertyCode(property);
                }
                else if (property.PropertyType == typeof(DateTime))
                {
                    writerEmitter.EmitWriteDateTimePropertyCode(property);
                    readerEmitter.EmitReadDateTimePropertyCode(property);
                }
                else if (property.PropertyType == typeof(DateTimeOffset))
                {
                    writerEmitter.EmitWriteDateTimeOffsetPropertyCode(property);
                    readerEmitter.EmitReadDateTimeOffsetPropertyCode(property);
                }
                else if (property.PropertyType == typeof(string))
                {
                    writerEmitter.EmitWriteStringPropertyCode(property);
                    readerEmitter.EmitReadStringPropertyCode(property);
                }
                else if (property.PropertyType.IsArray)
                {
                    writerEmitter.EmitWriteArrayPropertyCode(property);
                    readerEmitter.EmitReadArrayPropertyCode(property);
                }
                else if (GenericCollectionInfo.IsICollectionType(property.PropertyType))
                {
                    writerEmitter.EmitWriteCollectionPropertyCode(property);
                    readerEmitter.EmitReadCollectionPropertyCode(property);
                }
                else if (TypesInfo.IsNullable(property.PropertyType))
                {
                    writerEmitter.EmitWriteNullablePropertyCode(property);
                    readerEmitter.EmitReadNullablePropertyCode(property);
                }
                else
                {
                    throw new NotImplementedException(
                        "Not supported property: " + property.PropertyType.ToString() + " " + property.Name);
                }
            }

            writerEmitter.EmitMethodReturn();
            readerEmitter.EmitMethodReturn();

            var writePropertiesDelegate = (Action<Stream, TObject>)propertiesWriter.CreateDelegate(typeof(Action<Stream, TObject>));
            var readPropertiesDelegate = (Action<Stream, TObject>)propertiesReader.CreateDelegate(typeof(Action<Stream, TObject>));

            return new EmitSerializer<TObject>(writePropertiesDelegate, readPropertiesDelegate);
        }
    }
}
