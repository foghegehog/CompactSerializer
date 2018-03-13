using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Reflection.Emit;
using CompactSerializer.GeneratedSerializer.MemberInfos;

namespace CompactSerializer.GeneratedSerializer
{
    public class CodeEmitter
    {
        public CodeEmitter(ILGenerator ilGenerator)
        {
            _ilGenerator = ilGenerator;
        }

        public void EmitWriteBytePropertyCode(PropertyInfo property)
        {
            // load stream parameter onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);

            EmitLoadPropertyValueToStack(property);
            
            // write the byte to stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.WriteByte, null);
        }

        public void EmitWritePrimitiveTypePropertyCode(PropertyInfo property)
        {
            EmitLoadPropertyValueToStack(property);
            EmitWritePrimitiveValueFromStack(property.PropertyType);
        }

        public void EmitWriteGuidPropertyCode(PropertyInfo property)
        {
            EmitLoadPropertyValueToStack(property);
            EmitWriteGuidValueFromStack();   
        }

        public void EmitWriteDateTimePropertyCode(PropertyInfo property)
        {
            var dateTime = _ilGenerator.DeclareLocal(typeof(DateTime));
            
            EmitLoadPropertyValueToStack(property);

            // save value from stack to DateTime variable
            _ilGenerator.Emit(OpCodes.Stloc, dateTime);

            EmitWriteDateTimeVariable(dateTime);
        }

        public void EmitWriteDateTimeOffsetPropertyCode(PropertyInfo property)
        {
            var dateTimeOffset = _ilGenerator.DeclareLocal(typeof(DateTimeOffset));

            EmitLoadPropertyValueToStack(property);

            // save value from stack to local variable
            _ilGenerator.Emit(OpCodes.Stloc, dateTimeOffset);

            EmitWriteDateTimeOffsetVariable(dateTimeOffset);
        }

        public void EmitWriteStringPropertyCode(PropertyInfo property)
        {
            var stringValue = _ilGenerator.DeclareLocal(typeof(string));

            EmitLoadPropertyValueToStack(property);

            // save value from stack to local variable
            _ilGenerator.Emit(OpCodes.Stloc, stringValue);

            EmitWriteStringVariable(stringValue);
        }

        public void EmitWriteArrayPropertyCode(PropertyInfo property)
        {
            var elementType = property.PropertyType.GetElementType();

            var array = _ilGenerator.DeclareLocal(property.PropertyType);
            var arrayLength = _ilGenerator.DeclareLocal(typeof(int));
            var arrayLenghtBytes = _ilGenerator.DeclareLocal(typeof(byte[]));
            var index = _ilGenerator.DeclareLocal(typeof(int));

            var isNullArrayBranch = _ilGenerator.DefineLabel();
            var loopConditionLabel = _ilGenerator.DefineLabel();
            var loopIterationLabel = _ilGenerator.DefineLabel();
            var endOfWriteLabel = _ilGenerator.DefineLabel();
                        
            EmitLoadPropertyValueToStack(property);

             // save value from stack to local variable
            _ilGenerator.Emit(OpCodes.Stloc, array);

            EmitJumpIfValueIsNull(array, isNullArrayBranch, false);

            // load array to stack
            _ilGenerator.Emit(OpCodes.Ldloc, array);
            // calculate the array length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert it to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // save to local variable
            _ilGenerator.Emit(OpCodes.Stloc, arrayLength);
            // put back to stack
            _ilGenerator.Emit(OpCodes.Ldloc, arrayLength);
            // get length bytes
            _ilGenerator.EmitCall(OpCodes.Call, GetInt32BytesMethodInfo, null);
            // save them in local variable
            _ilGenerator.Emit(OpCodes.Stloc, arrayLenghtBytes);

            EmitWriteBytesArrayToStream(arrayLenghtBytes);

            EmitZeroIndex(index);
            // jump to the loop condition check
            _ilGenerator.Emit(OpCodes.Br_S, loopConditionLabel);

            _ilGenerator.MarkLabel(loopIterationLabel);
            // load array to stack
            _ilGenerator.Emit(OpCodes.Ldloc, array);
            // load index to stack
            _ilGenerator.Emit(OpCodes.Ldloc_S, index);
            // load element with specified index to stack
            _ilGenerator.Emit(OpCodes.Ldelem, elementType);

            EmitWriteValueFromStackToStream(elementType);

            EmitIndexIncrement(index);

            _ilGenerator.MarkLabel(loopConditionLabel);
            EmitIndexIsLessCheck(index, arrayLength);
            _ilGenerator.Emit(OpCodes.Brtrue_S, loopIterationLabel);

            // skip isNull branch
            _ilGenerator.Emit(OpCodes.Br_S, endOfWriteLabel);

            _ilGenerator.MarkLabel(isNullArrayBranch);
            // put the '-1' value to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_M1);
            EmitWritePrimitiveValueFromStack(typeof(int));

            _ilGenerator.MarkLabel(endOfWriteLabel);
        }

        public void EmitWriteCollectionPropertyCode(PropertyInfo property)
        {
            var collectionInfo = GenericCollectionInfo.GetCollectionInfo(property.PropertyType);

            var collection = _ilGenerator.DeclareLocal(property.PropertyType);
            var elementsCount = _ilGenerator.DeclareLocal(typeof(int));
            var elementsCountBytes = _ilGenerator.DeclareLocal(typeof(byte[]));
            var enumerator = _ilGenerator.DeclareLocal(collectionInfo.EnumeratorType);

            var isNullcollectionBranch = _ilGenerator.DefineLabel();
            var loopConditionLabel = _ilGenerator.DefineLabel();
            var loopIterationLabel = _ilGenerator.DefineLabel();
            var endOfWriteLabel = _ilGenerator.DefineLabel();
                        
            EmitLoadPropertyValueToStack(property);

            // save value from stack to local variable
            _ilGenerator.Emit(OpCodes.Stloc, collection);

            EmitJumpIfValueIsNull(collection, isNullcollectionBranch, false);

            // load collection to stack
            _ilGenerator.Emit(OpCodes.Ldloc, collection);
            // get the elements count
            _ilGenerator.EmitCall(OpCodes.Callvirt, collectionInfo.CountPropertyGetter, null);
            // get count bytes
            _ilGenerator.EmitCall(OpCodes.Call, GetInt32BytesMethodInfo, null);
            // save them in local variable
            _ilGenerator.Emit(OpCodes.Stloc, elementsCountBytes);

            EmitWriteBytesArrayToStream(elementsCountBytes);

            // load collection to stack
            _ilGenerator.Emit(OpCodes.Ldloc, collection);
            // get the enumerator
            _ilGenerator.EmitCall(OpCodes.Callvirt, collectionInfo.GetEnumeratorMethod, null);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc_S, enumerator);

            // try
            _ilGenerator.BeginExceptionBlock();

            // jump to the loop condition check
            _ilGenerator.Emit(OpCodes.Br_S, loopConditionLabel);

            _ilGenerator.MarkLabel(loopIterationLabel);
            // load enumerator address to stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, enumerator);
            // get the current element
            _ilGenerator.EmitCall(OpCodes.Call, collectionInfo.EnumeratorCurrentProperty, null);

            EmitWriteValueFromStackToStream(collectionInfo.ElementType);

            _ilGenerator.MarkLabel(loopConditionLabel);
            // load address of the enumerator to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, enumerator);
            // call MoveNext method
            _ilGenerator.EmitCall(OpCodes.Call, collectionInfo.EnumeratorMoveNextMethod, null);
            // jump to iteration, if has element
            _ilGenerator.Emit(OpCodes.Brtrue, loopIterationLabel);

            // skip isNull branch
            _ilGenerator.Emit(OpCodes.Leave_S, endOfWriteLabel);

            // finally
            _ilGenerator.BeginFinallyBlock();
            // load enumerator address to stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, enumerator);
            // constrain type
            _ilGenerator.Emit(OpCodes.Constrained, collectionInfo.EnumeratorType);
            // call IDisposable.Dispose
            _ilGenerator.EmitCall(OpCodes.Callvirt, TypesInfo.GetDisposeMethodInfo, null);

            _ilGenerator.EndExceptionBlock();

            _ilGenerator.MarkLabel(isNullcollectionBranch);

            // put the '-1' value to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_M1);

            EmitWritePrimitiveValueFromStack(typeof(int));

            _ilGenerator.MarkLabel(endOfWriteLabel);
        }

        public void EmitWriteNullablePropertyCode(PropertyInfo property)
        {
            var nullableValue = _ilGenerator.DeclareLocal(property.PropertyType);
            var isNull = _ilGenerator.DeclareLocal(typeof(bool));
            var isNullByte = _ilGenerator.DeclareLocal(typeof(byte));
            var underlyingType = property.PropertyType.GetGenericArguments().Single();
            var value = _ilGenerator.DeclareLocal(underlyingType);
            var valueBytes = _ilGenerator.DeclareLocal(typeof(byte[]));

            var nullableInfo = NullableInfo.GetNullableInfo(underlyingType);

            var nullFlagBranch = _ilGenerator.DefineLabel();
            var byteFlagLabel = _ilGenerator.DefineLabel();
            var noValueLabel = _ilGenerator.DefineLabel();

           EmitLoadPropertyValueToStack(property);
            // save nullable value to local variable
            _ilGenerator.Emit(OpCodes.Stloc, nullableValue);
            // load address of the variable to stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, nullableValue);
            // get HasValue property
            _ilGenerator.EmitCall(OpCodes.Call, nullableInfo.HasValueProperty, null);
            // load value '0' to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // compare
            _ilGenerator.Emit(OpCodes.Ceq);
            // save to local boolean variable
            _ilGenerator.Emit(OpCodes.Stloc, isNull);
            // load to stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNull);
            // jump to isNull branch, if needed
            _ilGenerator.Emit(OpCodes.Brtrue_S, nullFlagBranch);

            // load value '0' to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // jump to byteFlagLabel
            _ilGenerator.Emit(OpCodes.Br_S, byteFlagLabel);
            
            _ilGenerator.MarkLabel(nullFlagBranch);
            // load value '1' to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_1);
            
            _ilGenerator.MarkLabel(byteFlagLabel);
            // convert to byte
            _ilGenerator.Emit(OpCodes.Conv_U1);
            // save to local variable
            _ilGenerator.Emit(OpCodes.Stloc, isNullByte);
            // load stream parameter to stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // load byte flag to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNullByte);
            // write it to the stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.WriteByte, null);

            // load isNull flag to stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNull);
            // load value '0'
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // compare
            _ilGenerator.Emit(OpCodes.Ceq);
            // jump to tne end, if no value presented
            _ilGenerator.Emit(OpCodes.Brfalse_S, noValueLabel);

            // load the address of the nullable to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, nullableValue);
            // get actual value
            _ilGenerator.EmitCall(OpCodes.Call, nullableInfo.ValueProperty, null);

            EmitWriteValueFromStackToStream(underlyingType);

            _ilGenerator.MarkLabel(noValueLabel);
        }

        private void EmitWriteValueFromStackToStream(Type valueType)
        {
            var element = _ilGenerator.DeclareLocal(valueType);

            if (TypesInfo.PrimitiveTypes.Contains(valueType))
            {
                EmitWritePrimitiveValueFromStack(valueType);
            }
            else if (valueType == typeof(string))
            {
                // save value from stack to local variable
                _ilGenerator.Emit(OpCodes.Stloc_S, element);

                EmitWriteStringVariable(element);
            }
            else if (valueType == typeof(Guid))
            {
                EmitWriteGuidValueFromStack();
            }
            else if (valueType == typeof(DateTime))
            {
                // save value from stack to local variable
                _ilGenerator.Emit(OpCodes.Stloc, element);

                EmitWriteDateTimeVariable(element);
            }
            else if (valueType == typeof(DateTimeOffset))
            {
                // save value from stack to local variable
                _ilGenerator.Emit(OpCodes.Stloc, element);

                EmitWriteDateTimeOffsetVariable(element);
            }
            else
            {
                throw new NotImplementedException(valueType.ToString());
            }
        }

        private void EmitLoadPropertyValueToStack(PropertyInfo property)
        {
             // load object under serialization onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);
            // get property value
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.GetMethod, null);
        }

        private void EmitWritePrimitiveValueFromStack(Type valueType)
        {
            var byteArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            // get value's representation in bytes
            _ilGenerator.EmitCall(OpCodes.Call, BitConverterMethodsInfo.ChooseGetBytesOverloadByType(valueType), null);
             // save the bytes array from the stack in local variable
            _ilGenerator.Emit(OpCodes.Stloc, byteArray);

            EmitWriteBytesArrayToStream(byteArray);
        }

        private void EmitWriteGuidValueFromStack()
        {
            var bytesArrayVariable = _ilGenerator.DeclareLocal(typeof(byte[]));

            var guidVariable = _ilGenerator.DeclareLocal(typeof(Guid));
            // save the Guid value in local variable
            _ilGenerator.Emit(OpCodes.Stloc, guidVariable);

            // put the address of the guid variable to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, guidVariable);
            // call .ToByteArray() method to get Guid value's representation in bytes
            _ilGenerator.EmitCall(OpCodes.Call, GuidMembersInfo.ToByteArrayMethod, null);

             // save the bytes array from the stack in local variable
            _ilGenerator.Emit(OpCodes.Stloc, bytesArrayVariable);

            EmitWriteBytesArrayToStream(bytesArrayVariable);
        }

        private void EmitWriteDateTimeVariable(LocalBuilder dateTime)
        {
            var kind = _ilGenerator.DeclareLocal(typeof(DateTimeKind));
            var ticks = _ilGenerator.DeclareLocal(typeof(long));
            var byteArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            // load dateTime variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, dateTime);
            // get its Kind property value
            _ilGenerator.EmitCall(OpCodes.Call, DateTimeMembersInfo.KindProperty, null);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc, kind);
             // load stream parameter onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // load Kind variable to evaluation stack
            _ilGenerator.Emit(OpCodes.Ldloc, kind);
            // convert it to byte
            _ilGenerator.Emit(OpCodes.Conv_U1);
            // write the Kind byte to stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.WriteByte, null);

             // load dateTime variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, dateTime);
            // call method to get Ticks property
            _ilGenerator.EmitCall(OpCodes.Call, DateTimeMembersInfo.TicksProperty, null);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc, ticks);
            // load ticks to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, ticks);
            // convert value to byteArray
            _ilGenerator.EmitCall(OpCodes.Call, GetInt64BytesMethodInfo, null);
            // save result to local variable
            _ilGenerator.Emit(OpCodes.Stloc, byteArray);
            EmitWriteBytesArrayToStream(byteArray);
        }

        private void EmitWriteDateTimeOffsetVariable(LocalBuilder dateTimeOffset)
        {
            var offset = _ilGenerator.DeclareLocal(typeof(TimeSpan));
            var dateTimeTicks = _ilGenerator.DeclareLocal(typeof(long));
            var dateTimeTicksByteArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var offsetTicksByteArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            // load the variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, dateTimeOffset);
            // call method to get Offset property
            _ilGenerator.EmitCall(OpCodes.Call, DateTimeOffsetMembersInfo.OffsetProperty, null);
            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, offset);
            // load the variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, offset);
            // call method to get offset Ticks property
            _ilGenerator.EmitCall(OpCodes.Call, TimeSpanMembersInfo.TicksProperty, null);
            // convert it to byte array
            _ilGenerator.EmitCall(OpCodes.Call, GetInt64BytesMethodInfo, null);
             // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, offsetTicksByteArray);

            EmitWriteBytesArrayToStream(offsetTicksByteArray);

            // load the dateTimeOffset variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloca_S, dateTimeOffset);
            // call method to get Ticks property
            _ilGenerator.EmitCall(OpCodes.Call, DateTimeOffsetMembersInfo.TicksProperty, null);
            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, dateTimeTicks);
            // load the variable address to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, dateTimeTicks);
            // convert it to byte array
            _ilGenerator.EmitCall(OpCodes.Call, GetInt64BytesMethodInfo, null);
            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, dateTimeTicksByteArray);

            EmitWriteBytesArrayToStream(dateTimeTicksByteArray);
        }

        private void EmitWriteStringVariable(LocalBuilder stringValue)
        {
            var stringBytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var stringBytesCount = _ilGenerator.DeclareLocal(typeof(int));
            var bytesCoutArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var nullBytesCoutArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            var isNullValueBranch = _ilGenerator.DefineLabel();
            var endOfWriteStringFragment = _ilGenerator.DefineLabel();

            EmitJumpIfValueIsNull(stringValue, isNullValueBranch);

            // get Encoding
            _ilGenerator.EmitCall(OpCodes.Call, EncodingMembersInfo.EncodingGetter, null);
            // load string variable
            _ilGenerator.Emit(OpCodes.Ldloc, stringValue);
            // get string bytes in selected encoding
            _ilGenerator.EmitCall(OpCodes.Callvirt, EncodingMembersInfo.GetBytesMethod, null);
            // save the byte array in local variable
            _ilGenerator.Emit(OpCodes.Stloc_S, stringBytesArray);
            // load it to stack
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesArray);
            // calculate the array length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert it to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // save calculated length in a variable
            _ilGenerator.Emit(OpCodes.Stloc, stringBytesCount);
            // load it to stack
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesCount);
            // get bytes representing this int
            _ilGenerator.EmitCall(OpCodes.Call, GetInt32BytesMethodInfo, null);
            // save the byte array
            _ilGenerator.Emit(OpCodes.Stloc_S, bytesCoutArray);

            EmitWriteBytesArrayToStream(bytesCoutArray);

            EmitWriteBytesArrayToStream(stringBytesArray);
            _ilGenerator.Emit(OpCodes.Br, endOfWriteStringFragment);

            // is null label
            _ilGenerator.MarkLabel(isNullValueBranch);
            // move -1 value to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_M1);
            // get bytesvar
            _ilGenerator.EmitCall(OpCodes.Call, GetInt32BytesMethodInfo, null);
            // save result to variable
            _ilGenerator.Emit(OpCodes.Stloc_S, nullBytesCoutArray);
            EmitWriteBytesArrayToStream(nullBytesCoutArray);

            _ilGenerator.MarkLabel(endOfWriteStringFragment);
        }

        private void EmitWriteBytesArrayToStream(LocalBuilder bytesArray)
        {
            // load stream parameter onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // load bytesCount array
            _ilGenerator.Emit(OpCodes.Ldloc_S, bytesArray);
            // load offset parameter == 0 onto the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_0); 
            // load bytesCount array
            _ilGenerator.Emit(OpCodes.Ldloc_S, bytesArray);
            // calculate the array length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert it to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // write array to stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Write, null);
        }

        private void EmitJumpIfValueIsNull(LocalBuilder value, Label isNullLabel, bool shortForm = true)
        {
            // load value to stack
            _ilGenerator.Emit(OpCodes.Ldloc, value);
            // load null value to stack
            _ilGenerator.Emit(OpCodes.Ldnull);
            // compare values on the stack top
            _ilGenerator.Emit(OpCodes.Cgt_Un);
            // jump to isNullBranch if result is false
            if (shortForm)
            {
                _ilGenerator.Emit(OpCodes.Brfalse_S, isNullLabel);
            }
            else
            {
                _ilGenerator.Emit(OpCodes.Brfalse, isNullLabel);
            }
        }
        
        public void EmitMethodReturn()
        {
            _ilGenerator.Emit(OpCodes.Ret);
        }

        public void EmitReadBytePropertyCode(PropertyInfo property)
        {
            // load object under serialization onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);
            // load stream parameter onto the evaluation stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // read int(!!!) from stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.ReadByte, null);
            _ilGenerator.Emit(OpCodes.Conv_U1);
            // set property value
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadPrimitiveTypePropertyCode(PropertyInfo property)
        {
            var bytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            //var propertyBytesCount = TypesInfo.GetBytesCount(property.PropertyType);

            EmitAllocateBytesArrayForType(property.PropertyType, bytesArray);
            EmitReadByteArrayFromStream(bytesArray);

            // push the deserialized object parameter onto the stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitConvertBytesArrayToPrimitiveValueOnStack(bytesArray, property.PropertyType);

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadGuidPropertyCode(PropertyInfo property)
        {
            var bytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            EmitAllocateBytesArrayForType(property.PropertyType, bytesArray);
            EmitReadByteArrayFromStream(bytesArray);

            // push the deserialized object parameter onto the stack
            _ilGenerator.Emit(OpCodes.Ldarg_1, 1);

            EmitConvertBytesArrayToGuidValueOnStack(bytesArray);

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadDateTimePropertyCode(PropertyInfo property)
        {
            // push the deserialized object parameter onto the stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitReadDateTimeValueFromStreamToStack();
            
            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadDateTimeOffsetPropertyCode(PropertyInfo property)
        {
            // push the object parameter
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitReadDateTimeOffsetValueFromStreamToStack();

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadStringPropertyCode(PropertyInfo property)
        {
           // load the object parameter
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitReadStringFromStreamToStack();

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadArrayPropertyCode(PropertyInfo property)
        {
            var elementType = property.PropertyType.GetElementType();

            var elementBytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            var lengthBytes = _ilGenerator.DeclareLocal(typeof(byte[]));
            var arrayLength = _ilGenerator.DeclareLocal(typeof(int));
            var array = _ilGenerator.DeclareLocal(property.PropertyType);
            var element = _ilGenerator.DeclareLocal(elementType);
            var index = _ilGenerator.DeclareLocal(typeof(int));

            var isNullArrayLabel = _ilGenerator.DefineLabel();
            var setPropertyLabel = _ilGenerator.DefineLabel();
            var loopConditionLabel = _ilGenerator.DefineLabel();
            var loopIterationLabel = _ilGenerator.DefineLabel();

            // push deserialized object to stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitAllocateBytesArrayForType(typeof(int), lengthBytes);
            EmitReadByteArrayFromStream(lengthBytes);  

            EmitConvertBytesArrayToPrimitiveValueOnStack(lengthBytes, typeof(int));      

            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, arrayLength);             

            EmitJumpIfNoElements(arrayLength, isNullArrayLabel);

            // push array length to stack
            _ilGenerator.Emit(OpCodes.Ldloc, arrayLength);
            // create new array
            _ilGenerator.Emit(OpCodes.Newarr, elementType);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc, array);

            EmitZeroIndex(index);

            if (elementType != typeof(string))
            {
                EmitAllocateBytesArrayForType(elementType, elementBytesArray);
            }

            // jump to the loop condition check
            _ilGenerator.Emit(OpCodes.Br_S, loopConditionLabel);

            _ilGenerator.MarkLabel(loopIterationLabel);
            
            if (elementType == typeof(string))
            {
                EmitReadStringFromStreamToStack();
            }
            else
            {
                EmitReadValueFromStreamToStack(elementType, elementBytesArray);
            }
            
            // save to local variable
            _ilGenerator.Emit(OpCodes.Stloc, element);
            
            // load array instance to stack
            _ilGenerator.Emit(OpCodes.Ldloc, array);
            // load element index
            _ilGenerator.Emit(OpCodes.Ldloc_S, index);
            // load the element to stack
            _ilGenerator.Emit(OpCodes.Ldloc_S, element);
            // set element to the array
            _ilGenerator.Emit(OpCodes.Stelem, elementType); 

            EmitIndexIncrement(index);

            _ilGenerator.MarkLabel(loopConditionLabel);
            EmitIndexIsLessCheck(index, arrayLength);
            // jump to the iteration if true
            _ilGenerator.Emit(OpCodes.Brtrue_S, loopIterationLabel);

            // push filled array to stack
            _ilGenerator.Emit(OpCodes.Ldloc, array);
            // jump to SetProperty label
            _ilGenerator.Emit(OpCodes.Br_S, setPropertyLabel);

            _ilGenerator.MarkLabel(isNullArrayLabel);
            _ilGenerator.Emit(OpCodes.Ldnull);

            _ilGenerator.MarkLabel(setPropertyLabel);

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadCollectionPropertyCode(PropertyInfo property)
        {
            var collectionInfo = GenericCollectionInfo.GetCollectionInfo(property.PropertyType);

            var elementsCount = _ilGenerator.DeclareLocal(typeof(int));
            var elementsCountBytes = _ilGenerator.DeclareLocal(typeof(byte[]));
            var collection = _ilGenerator.DeclareLocal(property.PropertyType);
            var elementBytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var element = _ilGenerator.DeclareLocal(collectionInfo.ElementType);
            var index = _ilGenerator.DeclareLocal(typeof(int));

            var loopConditionLabel = _ilGenerator.DefineLabel();
            var loopIterationLabel = _ilGenerator.DefineLabel();
            var isEmptyCollectionLabel = _ilGenerator.DefineLabel();
            var setPropertyLabel = _ilGenerator.DefineLabel();

            // push deserialized object to stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);

            EmitAllocateBytesArrayForType(typeof(int), elementsCountBytes);
            EmitReadByteArrayFromStream(elementsCountBytes);                     

            EmitConvertBytesArrayToPrimitiveValueOnStack(elementsCountBytes, typeof(int));      

            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, elementsCount);  

            EmitJumpIfNoElements(elementsCount, isEmptyCollectionLabel);

            // create collection
            _ilGenerator.Emit(OpCodes.Newobj, collectionInfo.Constructor);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc, collection);

            EmitZeroIndex(index);

            if (collectionInfo.ElementType != typeof(string))
            {
                EmitAllocateBytesArrayForType(collectionInfo.ElementType, elementBytesArray);
            }

            // jump to the loop condition check
            _ilGenerator.Emit(OpCodes.Br_S, loopConditionLabel);

            _ilGenerator.MarkLabel(loopIterationLabel);
            
            if (collectionInfo.ElementType == typeof(string))
            {
                EmitReadStringFromStreamToStack();
            }
            else
            {
                EmitReadValueFromStreamToStack(collectionInfo.ElementType, elementBytesArray);
            }
            
            // save to local variable
            _ilGenerator.Emit(OpCodes.Stloc, element);
            
            // load collection instance to stack
            _ilGenerator.Emit(OpCodes.Ldloc, collection);
            // load the element to stack
            _ilGenerator.Emit(OpCodes.Ldloc_S, element);
            // call .Add(element) method
            _ilGenerator.EmitCall(OpCodes.Callvirt, collectionInfo.AddMethod, null);

            EmitIndexIncrement(index);

             _ilGenerator.MarkLabel(loopConditionLabel);
            EmitIndexIsLessCheck(index, elementsCount);
            // jump to the iteration if true
            _ilGenerator.Emit(OpCodes.Brtrue_S, loopIterationLabel);

            // load filled collection to stack
            _ilGenerator.Emit(OpCodes.Ldloc, collection);
            // jump to property setter
            _ilGenerator.Emit(OpCodes.Br_S, setPropertyLabel);

            _ilGenerator.MarkLabel(isEmptyCollectionLabel);
            _ilGenerator.Emit(OpCodes.Ldnull);

            _ilGenerator.MarkLabel(setPropertyLabel);

            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);
        }

        public void EmitReadNullablePropertyCode(PropertyInfo property)
        {
            var underlyingType = property.PropertyType.GetGenericArguments().Single();
            var nullableInfo = NullableInfo.GetNullableInfo(underlyingType);
            
            var isNullIntFlag = _ilGenerator.DeclareLocal(typeof(int));
            var isNull = _ilGenerator.DeclareLocal(typeof(bool));
            var nullableValue = _ilGenerator.DeclareLocal(property.PropertyType);
            var valueBytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            var readValueBranch = _ilGenerator.DefineLabel();
            var endOfReadLabel = _ilGenerator.DefineLabel();

            // load stream parameter to stack
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // read int(!!!) from stream
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.ReadByte, null);
            // save to local variable
            _ilGenerator.Emit(OpCodes.Stloc, isNullIntFlag);
            // load to stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNullIntFlag);

            // load '1' value
            _ilGenerator.Emit(OpCodes.Ldc_I4_1);
            // compare
            _ilGenerator.Emit(OpCodes.Ceq);
            // save result to local variable
            _ilGenerator.Emit(OpCodes.Stloc, isNull);
            // load to stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNull);
            // jump to read if not null
            _ilGenerator.Emit(OpCodes.Brfalse_S, readValueBranch);
            
            // load object under deserialization to stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);
            // load nullable value variable address
            _ilGenerator.Emit(OpCodes.Ldloca_S, nullableValue);
            // init with null
            _ilGenerator.Emit(OpCodes.Initobj, property.PropertyType);
            // load to stack
            _ilGenerator.Emit(OpCodes.Ldloc, nullableValue);
            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null); 
            // skip other
            _ilGenerator.Emit(OpCodes.Br_S, endOfReadLabel);

            _ilGenerator.MarkLabel(readValueBranch);

            // load bject under deserialization to stack
            _ilGenerator.Emit(OpCodes.Ldarg_1);
            EmitAllocateBytesArrayForType(underlyingType, valueBytesArray);
            EmitReadValueFromStreamToStack(underlyingType, valueBytesArray);
            // create nullable object
            _ilGenerator.Emit(OpCodes.Newobj, nullableInfo.Constructor);
            // call object's property setter
            _ilGenerator.EmitCall(OpCodes.Callvirt, property.SetMethod, null);

            _ilGenerator.MarkLabel(endOfReadLabel);
        }

        private void EmitReadValueFromStreamToStack(Type valueType, LocalBuilder valueBytesArray)
        {
            EmitReadByteArrayFromStream(valueBytesArray);

            if (TypesInfo.PrimitiveTypes.Contains(valueType))
            {
                EmitConvertBytesArrayToPrimitiveValueOnStack(valueBytesArray, valueType);
            }
            else if (valueType == typeof(Guid))
            {
                EmitConvertBytesArrayToGuidValueOnStack(valueBytesArray);
            }
            else if (valueType == typeof(DateTime))
            {
                EmitConvertBytesArrayToDateTimeOnStack(valueBytesArray);
            }
            else if (valueType == typeof(DateTimeOffset))
            {
                EmitConvertBytesArrayToDateTimeOffsetOnStack(valueBytesArray);
            }
            else
            {
                throw new NotImplementedException(valueType.ToString());
            }
        }

        private void EmitReadByteArrayFromStream(LocalBuilder bytesArray)
        {
            // push the stream parameter
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // push the byte array 
            _ilGenerator.Emit(OpCodes.Ldloc, bytesArray);
            // push '0' as the offset parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // push the byte array again - to calculete its length
            _ilGenerator.Emit(OpCodes.Ldloc, bytesArray);
            // get the length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert the result to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // call the stream.Read method
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Read, null);
            
            // pop amount of bytes read - not needed
            _ilGenerator.Emit(OpCodes.Pop);
        }


        private void EmitAllocateBytesArrayForType(Type forType, LocalBuilder bytesArray)
        {
            var typeBytesCount = TypesInfo.GetBytesCount(forType);

            // push the amout of bytes to read onto the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4, typeBytesCount);            
            // allocate array to store bytes
            _ilGenerator.Emit(OpCodes.Newarr, typeof(byte));
            // stores the allocated array in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, bytesArray);
        }

        private void EmitConvertBytesArrayToPrimitiveValueOnStack(LocalBuilder bytesArray, Type toType)
        {
            // push the read bytes array onto the stack
            _ilGenerator.Emit(OpCodes.Ldloc, bytesArray);
            // push '0' as the offset parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // call BitConverter.ToNNN method
            _ilGenerator.EmitCall(OpCodes.Call, BitConverterMethodsInfo.ChooseToTypeMethod(toType), null);
        }

        private void EmitConvertBytesArrayToGuidValueOnStack(LocalBuilder bytesArray)
        {
            // push byte array onto the stack
            _ilGenerator.Emit(OpCodes.Ldloc, bytesArray);

            // create new Guid object from byte array
            _ilGenerator.Emit(OpCodes.Newobj, GuidMembersInfo.ByteArrayConstructor);
        }

        private void EmitReadDateTimeValueFromStreamToStack()
        {
            var byteArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            var propertyBytesCount = TypesInfo.GetBytesCount(typeof(DateTime));

            // push the amout of bytes to read onto the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4, propertyBytesCount);
            // allocate array to store bytes
            _ilGenerator.Emit(OpCodes.Newarr, typeof(byte));
            // stores the allocated array in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, byteArray);

            // push the stream parameter
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // push the byte array 
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '0' as the offset parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // push the byte array again - to calculete its length
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // get the length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert the result to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // call the stream.Read method
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Read, null);
            
            // not to leave return value on the stack
            _ilGenerator.Emit(OpCodes.Pop);

            EmitConvertBytesArrayToDateTimeOnStack(byteArray);
        }

        private void EmitConvertBytesArrayToDateTimeOnStack(LocalBuilder byteArray)
        {
            var kind = _ilGenerator.DeclareLocal(typeof(DateTimeKind));
            var ticks = _ilGenerator.DeclareLocal(typeof(Int64));

            // load byte array variable to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '0' as the index of in the array
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // push element under specified index to stack
            _ilGenerator.Emit(OpCodes.Ldelem_U1);
            // save it to the local variable
            _ilGenerator.Emit(OpCodes.Stloc, kind);
            
            // load byte array variable to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '1' as the index of in the array
            _ilGenerator.Emit(OpCodes.Ldc_I4_1);
            // convert bytes from specified index to Int64
            _ilGenerator.EmitCall(OpCodes.Call, BytesToInt64MethodInfo, null);
            // save result in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, ticks);
            
            // push the ticks variable to stack
            _ilGenerator.Emit(OpCodes.Ldloc, ticks);
            // push the fileTime variable to stack
            _ilGenerator.Emit(OpCodes.Ldloc, kind);            
            // create DateTime from ticks and kind
            _ilGenerator.Emit(OpCodes.Newobj, DateTimeMembersInfo.Constructor);
        }

        private void EmitReadDateTimeOffsetValueFromStreamToStack()
        {
            var byteArray = _ilGenerator.DeclareLocal(typeof(byte[]));

            var propertyBytesCount = TypesInfo.GetBytesCount(typeof(DateTimeOffset));

            // push the amout of bytes to read onto the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4, propertyBytesCount);
            // allocate array to store bytes
            _ilGenerator.Emit(OpCodes.Newarr, typeof(byte));
            // stores the allocated array in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, byteArray);

            // push the stream parameter
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // push the byte array 
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '0' as the offset parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // push the byte array again - to calculete its length
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // get the length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert the result to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // call the stream.Read method
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Read, null);
            
            // not to leave return value on the stack
            _ilGenerator.Emit(OpCodes.Pop);

            EmitConvertBytesArrayToDateTimeOffsetOnStack(byteArray);     
        }

         private void EmitConvertBytesArrayToDateTimeOffsetOnStack(LocalBuilder byteArray)
         {
            var offset = _ilGenerator.DeclareLocal(typeof(TimeSpan));
            var dateTimeTicks = _ilGenerator.DeclareLocal(typeof(long));
            
            // push the byte array 
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '0' as the start index parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // convert bytes from specified index to Int64
            _ilGenerator.EmitCall(OpCodes.Call, BytesToInt64MethodInfo, null);
            // create TimeSpan by ticks
            _ilGenerator.EmitCall(OpCodes.Call, TimeSpanMembersInfo.FromTicksMethod, null);
            // store result in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, offset);

            // push the byte array 
            _ilGenerator.Emit(OpCodes.Ldloc, byteArray);
            // push '8' as the start index parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_8);
            // convert bytes from specified index to Int64
            _ilGenerator.EmitCall(OpCodes.Call, BytesToInt64MethodInfo, null);
            // store result in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, dateTimeTicks);

            // push the ticks parameter
            _ilGenerator.Emit(OpCodes.Ldloc, dateTimeTicks);
            // push the offset parameter
            _ilGenerator.Emit(OpCodes.Ldloc, offset);
            // create DateTimeOffset from ticks and offset
            _ilGenerator.Emit(OpCodes.Newobj, DateTimeOffsetMembersInfo.TicksOffsetConstructor);  
         }
        
        private void EmitReadStringFromStreamToStack()
        {
            var bytesCoutArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var stringBytesCount = _ilGenerator.DeclareLocal(typeof(int));
            var stringBytesArray = _ilGenerator.DeclareLocal(typeof(byte[]));
            var isNull = _ilGenerator.DeclareLocal(typeof(bool));
 
            var isNotNullBranch = _ilGenerator.DefineLabel();
            var endOfReadLabel = _ilGenerator.DefineLabel();

            var propertyBytesCount = TypesInfo.GetBytesCount(typeof(int));
            // push the amout of bytes to read onto the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4, propertyBytesCount);
            // allocate array to store bytes
            _ilGenerator.Emit(OpCodes.Newarr, typeof(byte));
            // stores the allocated array in the local variable
            _ilGenerator.Emit(OpCodes.Stloc, bytesCoutArray);

            // push the stream parameter
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // push the byte count array 
            _ilGenerator.Emit(OpCodes.Ldloc, bytesCoutArray);
            // push '0' as the offset parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // push the byte array again - to calculete its length
            _ilGenerator.Emit(OpCodes.Ldloc, bytesCoutArray);
            // get the length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert the result to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // call the stream.Read method
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Read, null);
            // pop amount of bytes read
            _ilGenerator.Emit(OpCodes.Pop);

            // push the bytes count array 
            _ilGenerator.Emit(OpCodes.Ldloc, bytesCoutArray);
            // push '0' as the start index parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // convert the bytes to Int32
            _ilGenerator.EmitCall(OpCodes.Call, BytesToInt32MethodInfo, null);
            // save bytes count to lacal variable
            _ilGenerator.Emit(OpCodes.Stloc, stringBytesCount);
            // load it to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesCount);
            // put value '-1' to the stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_M1);
            // compare bytes count and -1
            _ilGenerator.Emit(OpCodes.Ceq);
            // save to boolean variable
            _ilGenerator.Emit(OpCodes.Stloc, isNull);
            // load to stack
            _ilGenerator.Emit(OpCodes.Ldloc, isNull);
            // if false, jump to isNotNullBranch
            _ilGenerator.Emit(OpCodes.Brfalse_S, isNotNullBranch);

            // push 'null' value
            _ilGenerator.Emit(OpCodes.Ldnull);
            // jump to the end of read fragment
            _ilGenerator.Emit(OpCodes.Br_S, endOfReadLabel);

            // not null string value branch
            _ilGenerator.MarkLabel(isNotNullBranch);

             // load bytes count to the stack
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesCount);
            // allocate array to store bytes
            _ilGenerator.Emit(OpCodes.Newarr, typeof(byte));
            // save it to local variable
            _ilGenerator.Emit(OpCodes.Stloc, stringBytesArray);
            // push the stream parameter
            _ilGenerator.Emit(OpCodes.Ldarg_0);
            // load string bytes array to stack
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesArray);
            // push '0' as the start index parameter
            _ilGenerator.Emit(OpCodes.Ldc_I4_0); 
            // load string bytes array to stack to get array length
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesArray);
            // get the length
            _ilGenerator.Emit(OpCodes.Ldlen);
            // convert the result to Int32
            _ilGenerator.Emit(OpCodes.Conv_I4);
            // call the stream.Read method
            _ilGenerator.EmitCall(OpCodes.Callvirt, StreamMethodsInfo.Read, null);
            // pop amount of bytes read
            _ilGenerator.Emit(OpCodes.Pop);
            // load Encoding to stack
            _ilGenerator.EmitCall(OpCodes.Call, EncodingMembersInfo.EncodingGetter, null);
            // load string bytes
            _ilGenerator.Emit(OpCodes.Ldloc, stringBytesArray);
            // call Encoding.GetString() method
            _ilGenerator.EmitCall(OpCodes.Callvirt, EncodingMembersInfo.GetStringMethod, null);

            _ilGenerator.MarkLabel(endOfReadLabel);
        }

        private void EmitZeroIndex(LocalBuilder index)
        {
             // push value '0' onto stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_0);
            // save it to the index variable
            _ilGenerator.Emit(OpCodes.Stloc_S, index);
        }

        private void EmitIndexIncrement(LocalBuilder index)
        {
             // load index value to stack
            _ilGenerator.Emit(OpCodes.Ldloc_S, index);
            // put value '1' to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_1);
            // increment index
            _ilGenerator.Emit(OpCodes.Add);
            // save incremented index
            _ilGenerator.Emit(OpCodes.Stloc_S, index);
        }

        private void EmitIndexIsLessCheck(LocalBuilder index, LocalBuilder compareToVariable)
        {
            // load index value to stack
            _ilGenerator.Emit(OpCodes.Ldloc_S, index);
            // load array length to stack
            _ilGenerator.Emit(OpCodes.Ldloc, compareToVariable);
            // compare if index is less than length
            _ilGenerator.Emit(OpCodes.Clt);
        }

        private void EmitJumpIfNoElements(LocalBuilder arrayLength, Label isNullArrayLabel)
        {
            // load value of array length to stack
            _ilGenerator.Emit(OpCodes.Ldloc, arrayLength);
            // load '-1' value to stack
            _ilGenerator.Emit(OpCodes.Ldc_I4_M1);
            // compare array length value with '-1'
            _ilGenerator.Emit(OpCodes.Cgt);
            // jump to isNull branch if not greater
            _ilGenerator.Emit(OpCodes.Brfalse, isNullArrayLabel);
        }

        private static readonly MethodInfo GetInt64BytesMethodInfo = BitConverterMethodsInfo.ChooseGetBytesOverloadByType(typeof(Int64));

        private static readonly MethodInfo GetInt32BytesMethodInfo = BitConverterMethodsInfo.ChooseGetBytesOverloadByType(typeof(Int32));

        private static readonly MethodInfo BytesToInt64MethodInfo = BitConverterMethodsInfo.ChooseToTypeMethod(typeof(Int64));

        private static readonly MethodInfo BytesToInt32MethodInfo = BitConverterMethodsInfo.ChooseToTypeMethod(typeof(Int32));

        private ILGenerator _ilGenerator;
    }
}
