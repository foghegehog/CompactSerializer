.assembly extern netstandard
{
  .ver 2:0:0:0
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 ) // .{...-.Q
}
.assembly 'SourcesForIL'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::'.ctor'(int32) =  (01 00 08 00 00 00 00 00 ) // ........

  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .custom instance void class [mscorlib]System.Diagnostics.DebuggableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) =  (01 00 07 01 00 00 00 00 ) // ........

  .custom instance void class [mscorlib]System.Reflection.AssemblyDescriptionAttribute::'.ctor'(string) =  (01 00 00 00 00 ) // .....

  .custom instance void class [mscorlib]System.Reflection.AssemblyCopyrightAttribute::'.ctor'(string) =  (
		01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
		20 32 30 31 38 00 00                            ) //  2018..

  .custom instance void class [mscorlib]System.Reflection.AssemblyTrademarkAttribute::'.ctor'(string) =  (01 00 00 00 00 ) // .....

  .custom instance void class [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::'.ctor'(bool) =  (01 00 00 00 00 ) // .....

  .custom instance void class [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::'.ctor'(string) =  (
		01 00 19 2E 4E 45 54 53 74 61 6E 64 61 72 64 2C   // ....NETStandard,
		56 65 72 73 69 6F 6E 3D 76 32 2E 30 01 00 54 0E   // Version=v2.0..T.
		14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
		79 4E 61 6D 65 00                               ) // yName.

  .custom instance void class [mscorlib]System.Reflection.AssemblyCompanyAttribute::'.ctor'(string) =  (
		01 00 0C 53 6F 75 72 63 65 73 46 6F 72 49 4C 00   // ...SourcesForIL.
		00                                              ) // .

  .custom instance void class [mscorlib]System.Reflection.AssemblyConfigurationAttribute::'.ctor'(string) =  (01 00 05 44 65 62 75 67 00 00 ) // ...Debug..

  .custom instance void class [mscorlib]System.Reflection.AssemblyFileVersionAttribute::'.ctor'(string) =  (01 00 07 31 2E 30 2E 30 2E 30 00 00 ) // ...1.0.0.0..

  .custom instance void class [mscorlib]System.Reflection.AssemblyInformationalVersionAttribute::'.ctor'(string) =  (01 00 05 31 2E 30 2E 30 00 00 ) // ...1.0.0..

  .custom instance void class [mscorlib]System.Reflection.AssemblyProductAttribute::'.ctor'(string) =  (
		01 00 0C 53 6F 75 72 63 65 73 46 6F 72 49 4C 00   // ...SourcesForIL.
		00                                              ) // .

  .custom instance void class [mscorlib]System.Reflection.AssemblyTitleAttribute::'.ctor'(string) =  (
		01 00 0C 53 6F 75 72 63 65 73 46 6F 72 49 4C 00   // ...SourcesForIL.
		00                                              ) // .

  .hash algorithm 0x00008004
  .ver  1:0:0:0
}
.module SourcesForIL.dll // GUID = {11CE80BE-E74B-4C62-8476-27F2F2DF9EEA}


.namespace SourcesForIL
{
  .class public auto ansi beforefieldinit Entity
  	extends [netstandard]System.Object
  {
    .field  private  valuetype [mscorlib]System.Guid '<Id>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<Name>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<ShortName>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<Description>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  char '<Label>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int8 '<Age>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32 '<Index>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  float32 '<Weigth>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  float64 '<Rating>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Decimal '<Price>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  bool '<IsVisible>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int16 '<ShortIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int64 '<LongIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int32 '<UnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int16 '<ShortUnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int64 '<LongUnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<CreatedAt>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<CreatedAtUtc>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<LastAccessed>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTimeOffset '<ChangedAt>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTimeOffset '<ChangedAtUtc>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32[] '<References>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<int16> '<Weeks>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  bool[] '<BitMap>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Guid[] '<ChildrenIds>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime[] '<Schedule>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTimeOffset[] '<Moments>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<string> '<Tags>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Decimal[] '<PricesHistory>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> '<AlternativeId>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........


    // method line 1
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Guid get_Id ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Guid SourcesForIL.Entity::'<Id>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Id

    // method line 2
    .method public hidebysig specialname 
           instance default void set_Id (valuetype [mscorlib]System.Guid 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2058
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Guid SourcesForIL.Entity::'<Id>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Id

    // method line 3
    .method public hidebysig specialname 
           instance default string get_Name ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2061
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.Entity::'<Name>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Name

    // method line 4
    .method public hidebysig specialname 
           instance default void set_Name (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2069
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.Entity::'<Name>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Name

    // method line 5
    .method public hidebysig specialname 
           instance default string get_ShortName ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2072
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.Entity::'<ShortName>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ShortName

    // method line 6
    .method public hidebysig specialname 
           instance default void set_ShortName (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x207a
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.Entity::'<ShortName>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ShortName

    // method line 7
    .method public hidebysig specialname 
           instance default string get_Description ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2083
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.Entity::'<Description>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Description

    // method line 8
    .method public hidebysig specialname 
           instance default void set_Description (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x208b
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.Entity::'<Description>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Description

    // method line 9
    .method public hidebysig specialname 
           instance default char get_Label ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2094
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld char SourcesForIL.Entity::'<Label>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Label

    // method line 10
    .method public hidebysig specialname 
           instance default void set_Label (char 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x209c
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld char SourcesForIL.Entity::'<Label>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Label

    // method line 11
    .method public hidebysig specialname 
           instance default unsigned int8 get_Age ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20a5
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int8 SourcesForIL.Entity::'<Age>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Age

    // method line 12
    .method public hidebysig specialname 
           instance default void set_Age (unsigned int8 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20ad
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int8 SourcesForIL.Entity::'<Age>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Age

    // method line 13
    .method public hidebysig specialname 
           instance default int32 get_Index ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20b6
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32 SourcesForIL.Entity::'<Index>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Index

    // method line 14
    .method public hidebysig specialname 
           instance default void set_Index (int32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20be
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int32 SourcesForIL.Entity::'<Index>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Index

    // method line 15
    .method public hidebysig specialname 
           instance default float32 get_Weigth ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20c7
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld float32 SourcesForIL.Entity::'<Weigth>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Weigth

    // method line 16
    .method public hidebysig specialname 
           instance default void set_Weigth (float32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20cf
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld float32 SourcesForIL.Entity::'<Weigth>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Weigth

    // method line 17
    .method public hidebysig specialname 
           instance default float64 get_Rating ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20d8
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld float64 SourcesForIL.Entity::'<Rating>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Rating

    // method line 18
    .method public hidebysig specialname 
           instance default void set_Rating (float64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20e0
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld float64 SourcesForIL.Entity::'<Rating>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Rating

    // method line 19
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Decimal get_Price ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20e9
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Decimal SourcesForIL.Entity::'<Price>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Price

    // method line 20
    .method public hidebysig specialname 
           instance default void set_Price (valuetype [mscorlib]System.Decimal 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20f1
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Decimal SourcesForIL.Entity::'<Price>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Price

    // method line 21
    .method public hidebysig specialname 
           instance default bool get_IsVisible ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20fa
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld bool SourcesForIL.Entity::'<IsVisible>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_IsVisible

    // method line 22
    .method public hidebysig specialname 
           instance default void set_IsVisible (bool 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2102
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld bool SourcesForIL.Entity::'<IsVisible>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_IsVisible

    // method line 23
    .method public hidebysig specialname 
           instance default int16 get_ShortIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x210b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int16 SourcesForIL.Entity::'<ShortIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ShortIndex

    // method line 24
    .method public hidebysig specialname 
           instance default void set_ShortIndex (int16 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2113
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int16 SourcesForIL.Entity::'<ShortIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ShortIndex

    // method line 25
    .method public hidebysig specialname 
           instance default int64 get_LongIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x211c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int64 SourcesForIL.Entity::'<LongIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_LongIndex

    // method line 26
    .method public hidebysig specialname 
           instance default void set_LongIndex (int64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2124
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int64 SourcesForIL.Entity::'<LongIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_LongIndex

    // method line 27
    .method public hidebysig specialname 
           instance default unsigned int32 get_UnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x212d
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int32 SourcesForIL.Entity::'<UnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_UnsignedIndex

    // method line 28
    .method public hidebysig specialname 
           instance default void set_UnsignedIndex (unsigned int32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2135
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int32 SourcesForIL.Entity::'<UnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_UnsignedIndex

    // method line 29
    .method public hidebysig specialname 
           instance default unsigned int16 get_ShortUnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x213e
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int16 SourcesForIL.Entity::'<ShortUnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ShortUnsignedIndex

    // method line 30
    .method public hidebysig specialname 
           instance default void set_ShortUnsignedIndex (unsigned int16 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2146
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int16 SourcesForIL.Entity::'<ShortUnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ShortUnsignedIndex

    // method line 31
    .method public hidebysig specialname 
           instance default unsigned int64 get_LongUnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x214f
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int64 SourcesForIL.Entity::'<LongUnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_LongUnsignedIndex

    // method line 32
    .method public hidebysig specialname 
           instance default void set_LongUnsignedIndex (unsigned int64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2157
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int64 SourcesForIL.Entity::'<LongUnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_LongUnsignedIndex

    // method line 33
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_CreatedAt ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2160
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<CreatedAt>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_CreatedAt

    // method line 34
    .method public hidebysig specialname 
           instance default void set_CreatedAt (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2168
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<CreatedAt>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_CreatedAt

    // method line 35
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_CreatedAtUtc ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2171
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<CreatedAtUtc>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_CreatedAtUtc

    // method line 36
    .method public hidebysig specialname 
           instance default void set_CreatedAtUtc (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2179
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<CreatedAtUtc>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_CreatedAtUtc

    // method line 37
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_LastAccessed ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2182
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<LastAccessed>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_LastAccessed

    // method line 38
    .method public hidebysig specialname 
           instance default void set_LastAccessed (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x218a
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.Entity::'<LastAccessed>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_LastAccessed

    // method line 39
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTimeOffset get_ChangedAt ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2193
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::'<ChangedAt>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ChangedAt

    // method line 40
    .method public hidebysig specialname 
           instance default void set_ChangedAt (valuetype [mscorlib]System.DateTimeOffset 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x219b
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::'<ChangedAt>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ChangedAt

    // method line 41
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTimeOffset get_ChangedAtUtc ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21a4
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::'<ChangedAtUtc>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ChangedAtUtc

    // method line 42
    .method public hidebysig specialname 
           instance default void set_ChangedAtUtc (valuetype [mscorlib]System.DateTimeOffset 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21ac
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::'<ChangedAtUtc>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ChangedAtUtc

    // method line 43
    .method public hidebysig specialname 
           instance default int32[] get_References ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21b5
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32[] SourcesForIL.Entity::'<References>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_References

    // method line 44
    .method public hidebysig specialname 
           instance default void set_References (int32[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21bd
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int32[] SourcesForIL.Entity::'<References>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_References

    // method line 45
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<int16> get_Weeks ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21c6
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<int16> SourcesForIL.Entity::'<Weeks>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Weeks

    // method line 46
    .method public hidebysig specialname 
           instance default void set_Weeks (class [mscorlib]System.Collections.Generic.List`1<int16> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21ce
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<int16> SourcesForIL.Entity::'<Weeks>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Weeks

    // method line 47
    .method public hidebysig specialname 
           instance default bool[] get_BitMap ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21d7
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld bool[] SourcesForIL.Entity::'<BitMap>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_BitMap

    // method line 48
    .method public hidebysig specialname 
           instance default void set_BitMap (bool[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21df
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld bool[] SourcesForIL.Entity::'<BitMap>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_BitMap

    // method line 49
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Guid[] get_ChildrenIds ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21e8
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Guid[] SourcesForIL.Entity::'<ChildrenIds>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_ChildrenIds

    // method line 50
    .method public hidebysig specialname 
           instance default void set_ChildrenIds (valuetype [mscorlib]System.Guid[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21f0
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Guid[] SourcesForIL.Entity::'<ChildrenIds>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_ChildrenIds

    // method line 51
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime[] get_Schedule ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21f9
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime[] SourcesForIL.Entity::'<Schedule>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Schedule

    // method line 52
    .method public hidebysig specialname 
           instance default void set_Schedule (valuetype [mscorlib]System.DateTime[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2201
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime[] SourcesForIL.Entity::'<Schedule>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Schedule

    // method line 53
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTimeOffset[] get_Moments ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x220a
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTimeOffset[] SourcesForIL.Entity::'<Moments>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Moments

    // method line 54
    .method public hidebysig specialname 
           instance default void set_Moments (valuetype [mscorlib]System.DateTimeOffset[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2212
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTimeOffset[] SourcesForIL.Entity::'<Moments>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Moments

    // method line 55
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<string> get_Tags ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x221b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<string> SourcesForIL.Entity::'<Tags>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_Tags

    // method line 56
    .method public hidebysig specialname 
           instance default void set_Tags (class [mscorlib]System.Collections.Generic.List`1<string> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2223
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<string> SourcesForIL.Entity::'<Tags>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_Tags

    // method line 57
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Decimal[] get_PricesHistory ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x222c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Decimal[] SourcesForIL.Entity::'<PricesHistory>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_PricesHistory

    // method line 58
    .method public hidebysig specialname 
           instance default void set_PricesHistory (valuetype [mscorlib]System.Decimal[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2234
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Decimal[] SourcesForIL.Entity::'<PricesHistory>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_PricesHistory

    // method line 59
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> get_AlternativeId ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x223d
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> SourcesForIL.Entity::'<AlternativeId>k__BackingField'
	IL_0006:  ret 
    } // end of method Entity::get_AlternativeId

    // method line 60
    .method public hidebysig specialname 
           instance default void set_AlternativeId (valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2245
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> SourcesForIL.Entity::'<AlternativeId>k__BackingField'
	IL_0007:  ret 
    } // end of method Entity::set_AlternativeId

    // method line 61
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x224e
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  nop 
	IL_0007:  ret 
    } // end of method Entity::.ctor

	.property instance valuetype [mscorlib]System.Guid Id ()
	{
		.get instance default valuetype [mscorlib]System.Guid SourcesForIL.Entity::get_Id () 
		.set instance default void SourcesForIL.Entity::set_Id (valuetype [mscorlib]System.Guid 'value') 
	}
	.property instance string Name ()
	{
		.get instance default string SourcesForIL.Entity::get_Name () 
		.set instance default void SourcesForIL.Entity::set_Name (string 'value') 
	}
	.property instance string ShortName ()
	{
		.get instance default string SourcesForIL.Entity::get_ShortName () 
		.set instance default void SourcesForIL.Entity::set_ShortName (string 'value') 
	}
	.property instance string Description ()
	{
		.get instance default string SourcesForIL.Entity::get_Description () 
		.set instance default void SourcesForIL.Entity::set_Description (string 'value') 
	}
	.property instance char Label ()
	{
		.get instance default char SourcesForIL.Entity::get_Label () 
		.set instance default void SourcesForIL.Entity::set_Label (char 'value') 
	}
	.property instance unsigned int8 Age ()
	{
		.get instance default unsigned int8 SourcesForIL.Entity::get_Age () 
		.set instance default void SourcesForIL.Entity::set_Age (unsigned int8 'value') 
	}
	.property instance int32 Index ()
	{
		.get instance default int32 SourcesForIL.Entity::get_Index () 
		.set instance default void SourcesForIL.Entity::set_Index (int32 'value') 
	}
	.property instance float32 Weigth ()
	{
		.get instance default float32 SourcesForIL.Entity::get_Weigth () 
		.set instance default void SourcesForIL.Entity::set_Weigth (float32 'value') 
	}
	.property instance float64 Rating ()
	{
		.get instance default float64 SourcesForIL.Entity::get_Rating () 
		.set instance default void SourcesForIL.Entity::set_Rating (float64 'value') 
	}
	.property instance valuetype [mscorlib]System.Decimal Price ()
	{
		.get instance default valuetype [mscorlib]System.Decimal SourcesForIL.Entity::get_Price () 
		.set instance default void SourcesForIL.Entity::set_Price (valuetype [mscorlib]System.Decimal 'value') 
	}
	.property instance bool IsVisible ()
	{
		.get instance default bool SourcesForIL.Entity::get_IsVisible () 
		.set instance default void SourcesForIL.Entity::set_IsVisible (bool 'value') 
	}
	.property instance int16 ShortIndex ()
	{
		.get instance default int16 SourcesForIL.Entity::get_ShortIndex () 
		.set instance default void SourcesForIL.Entity::set_ShortIndex (int16 'value') 
	}
	.property instance int64 LongIndex ()
	{
		.get instance default int64 SourcesForIL.Entity::get_LongIndex () 
		.set instance default void SourcesForIL.Entity::set_LongIndex (int64 'value') 
	}
	.property instance unsigned int32 UnsignedIndex ()
	{
		.get instance default unsigned int32 SourcesForIL.Entity::get_UnsignedIndex () 
		.set instance default void SourcesForIL.Entity::set_UnsignedIndex (unsigned int32 'value') 
	}
	.property instance unsigned int16 ShortUnsignedIndex ()
	{
		.get instance default unsigned int16 SourcesForIL.Entity::get_ShortUnsignedIndex () 
		.set instance default void SourcesForIL.Entity::set_ShortUnsignedIndex (unsigned int16 'value') 
	}
	.property instance unsigned int64 LongUnsignedIndex ()
	{
		.get instance default unsigned int64 SourcesForIL.Entity::get_LongUnsignedIndex () 
		.set instance default void SourcesForIL.Entity::set_LongUnsignedIndex (unsigned int64 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime CreatedAt ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.Entity::get_CreatedAt () 
		.set instance default void SourcesForIL.Entity::set_CreatedAt (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime CreatedAtUtc ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.Entity::get_CreatedAtUtc () 
		.set instance default void SourcesForIL.Entity::set_CreatedAtUtc (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime LastAccessed ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.Entity::get_LastAccessed () 
		.set instance default void SourcesForIL.Entity::set_LastAccessed (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTimeOffset ChangedAt ()
	{
		.get instance default valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::get_ChangedAt () 
		.set instance default void SourcesForIL.Entity::set_ChangedAt (valuetype [mscorlib]System.DateTimeOffset 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTimeOffset ChangedAtUtc ()
	{
		.get instance default valuetype [mscorlib]System.DateTimeOffset SourcesForIL.Entity::get_ChangedAtUtc () 
		.set instance default void SourcesForIL.Entity::set_ChangedAtUtc (valuetype [mscorlib]System.DateTimeOffset 'value') 
	}
	.property instance int32[] References ()
	{
		.get instance default int32[] SourcesForIL.Entity::get_References () 
		.set instance default void SourcesForIL.Entity::set_References (int32[] 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<int16> Weeks ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<int16> SourcesForIL.Entity::get_Weeks () 
		.set instance default void SourcesForIL.Entity::set_Weeks (class [mscorlib]System.Collections.Generic.List`1<int16> 'value') 
	}
	.property instance bool[] BitMap ()
	{
		.get instance default bool[] SourcesForIL.Entity::get_BitMap () 
		.set instance default void SourcesForIL.Entity::set_BitMap (bool[] 'value') 
	}
	.property instance valuetype [mscorlib]System.Guid[] ChildrenIds ()
	{
		.get instance default valuetype [mscorlib]System.Guid[] SourcesForIL.Entity::get_ChildrenIds () 
		.set instance default void SourcesForIL.Entity::set_ChildrenIds (valuetype [mscorlib]System.Guid[] 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime[] Schedule ()
	{
		.get instance default valuetype [mscorlib]System.DateTime[] SourcesForIL.Entity::get_Schedule () 
		.set instance default void SourcesForIL.Entity::set_Schedule (valuetype [mscorlib]System.DateTime[] 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTimeOffset[] Moments ()
	{
		.get instance default valuetype [mscorlib]System.DateTimeOffset[] SourcesForIL.Entity::get_Moments () 
		.set instance default void SourcesForIL.Entity::set_Moments (valuetype [mscorlib]System.DateTimeOffset[] 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<string> Tags ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<string> SourcesForIL.Entity::get_Tags () 
		.set instance default void SourcesForIL.Entity::set_Tags (class [mscorlib]System.Collections.Generic.List`1<string> 'value') 
	}
	.property instance valuetype [mscorlib]System.Decimal[] PricesHistory ()
	{
		.get instance default valuetype [mscorlib]System.Decimal[] SourcesForIL.Entity::get_PricesHistory () 
		.set instance default void SourcesForIL.Entity::set_PricesHistory (valuetype [mscorlib]System.Decimal[] 'value') 
	}
	.property instance valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> AlternativeId ()
	{
		.get instance default valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> SourcesForIL.Entity::get_AlternativeId () 
		.set instance default void SourcesForIL.Entity::set_AlternativeId (valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> 'value') 
	}
  } // end of class SourcesForIL.Entity
}

.namespace SourcesForIL
{
  .class public auto ansi serializable beforefieldinit SampleEntity
  	extends [netstandard]System.Object
  {
    .field  private  valuetype [mscorlib]System.Guid '<Id>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<Name>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<ShortName>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string '<Description>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  char '<Mark>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int8 '<Age>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32 '<Index>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<CreatedAt>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<CreatedAtUtc>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTime '<LastAccessed>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTimeOffset '<ChangedAt>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.DateTimeOffset '<ChangedAtUtc>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  float32 '<Weigth>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  float64 '<Rating>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Decimal '<Price>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  bool '<IsVisible>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int16 '<ShortIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int64 '<LongIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int32 '<UnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int16 '<ShortUnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  unsigned int64 '<LongUnsignedIndex>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  int32[] '<References>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Guid[] '<ChildrenIds>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> '<Schedule>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  string[] '<Tags>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........

    .field  private  valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> '<Discount>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........


    // method line 62
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Guid get_Id ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2257
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Guid SourcesForIL.SampleEntity::'<Id>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Id

    // method line 63
    .method public hidebysig specialname 
           instance default void set_Id (valuetype [mscorlib]System.Guid 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x225f
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Guid SourcesForIL.SampleEntity::'<Id>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Id

    // method line 64
    .method public hidebysig specialname 
           instance default string get_Name ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2268
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.SampleEntity::'<Name>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Name

    // method line 65
    .method public hidebysig specialname 
           instance default void set_Name (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2270
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.SampleEntity::'<Name>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Name

    // method line 66
    .method public hidebysig specialname 
           instance default string get_ShortName ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2279
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.SampleEntity::'<ShortName>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ShortName

    // method line 67
    .method public hidebysig specialname 
           instance default void set_ShortName (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2281
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.SampleEntity::'<ShortName>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ShortName

    // method line 68
    .method public hidebysig specialname 
           instance default string get_Description ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x228a
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string SourcesForIL.SampleEntity::'<Description>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Description

    // method line 69
    .method public hidebysig specialname 
           instance default void set_Description (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2292
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string SourcesForIL.SampleEntity::'<Description>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Description

    // method line 70
    .method public hidebysig specialname 
           instance default char get_Mark ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x229b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld char SourcesForIL.SampleEntity::'<Mark>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Mark

    // method line 71
    .method public hidebysig specialname 
           instance default void set_Mark (char 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22a3
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld char SourcesForIL.SampleEntity::'<Mark>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Mark

    // method line 72
    .method public hidebysig specialname 
           instance default unsigned int8 get_Age ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22ac
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int8 SourcesForIL.SampleEntity::'<Age>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Age

    // method line 73
    .method public hidebysig specialname 
           instance default void set_Age (unsigned int8 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22b4
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int8 SourcesForIL.SampleEntity::'<Age>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Age

    // method line 74
    .method public hidebysig specialname 
           instance default int32 get_Index ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22bd
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32 SourcesForIL.SampleEntity::'<Index>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Index

    // method line 75
    .method public hidebysig specialname 
           instance default void set_Index (int32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22c5
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int32 SourcesForIL.SampleEntity::'<Index>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Index

    // method line 76
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_CreatedAt ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22ce
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<CreatedAt>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_CreatedAt

    // method line 77
    .method public hidebysig specialname 
           instance default void set_CreatedAt (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22d6
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<CreatedAt>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_CreatedAt

    // method line 78
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_CreatedAtUtc ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22df
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<CreatedAtUtc>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_CreatedAtUtc

    // method line 79
    .method public hidebysig specialname 
           instance default void set_CreatedAtUtc (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22e7
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<CreatedAtUtc>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_CreatedAtUtc

    // method line 80
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTime get_LastAccessed ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22f0
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<LastAccessed>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_LastAccessed

    // method line 81
    .method public hidebysig specialname 
           instance default void set_LastAccessed (valuetype [mscorlib]System.DateTime 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x22f8
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::'<LastAccessed>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_LastAccessed

    // method line 82
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTimeOffset get_ChangedAt ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2301
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::'<ChangedAt>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ChangedAt

    // method line 83
    .method public hidebysig specialname 
           instance default void set_ChangedAt (valuetype [mscorlib]System.DateTimeOffset 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2309
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::'<ChangedAt>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ChangedAt

    // method line 84
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.DateTimeOffset get_ChangedAtUtc ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2312
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::'<ChangedAtUtc>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ChangedAtUtc

    // method line 85
    .method public hidebysig specialname 
           instance default void set_ChangedAtUtc (valuetype [mscorlib]System.DateTimeOffset 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x231a
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::'<ChangedAtUtc>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ChangedAtUtc

    // method line 86
    .method public hidebysig specialname 
           instance default float32 get_Weigth ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2323
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld float32 SourcesForIL.SampleEntity::'<Weigth>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Weigth

    // method line 87
    .method public hidebysig specialname 
           instance default void set_Weigth (float32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x232b
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld float32 SourcesForIL.SampleEntity::'<Weigth>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Weigth

    // method line 88
    .method public hidebysig specialname 
           instance default float64 get_Rating ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2334
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld float64 SourcesForIL.SampleEntity::'<Rating>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Rating

    // method line 89
    .method public hidebysig specialname 
           instance default void set_Rating (float64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x233c
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld float64 SourcesForIL.SampleEntity::'<Rating>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Rating

    // method line 90
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Decimal get_Price ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2345
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Decimal SourcesForIL.SampleEntity::'<Price>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Price

    // method line 91
    .method public hidebysig specialname 
           instance default void set_Price (valuetype [mscorlib]System.Decimal 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x234d
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Decimal SourcesForIL.SampleEntity::'<Price>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Price

    // method line 92
    .method public hidebysig specialname 
           instance default bool get_IsVisible ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2356
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld bool SourcesForIL.SampleEntity::'<IsVisible>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_IsVisible

    // method line 93
    .method public hidebysig specialname 
           instance default void set_IsVisible (bool 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x235e
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld bool SourcesForIL.SampleEntity::'<IsVisible>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_IsVisible

    // method line 94
    .method public hidebysig specialname 
           instance default int16 get_ShortIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2367
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int16 SourcesForIL.SampleEntity::'<ShortIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ShortIndex

    // method line 95
    .method public hidebysig specialname 
           instance default void set_ShortIndex (int16 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x236f
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int16 SourcesForIL.SampleEntity::'<ShortIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ShortIndex

    // method line 96
    .method public hidebysig specialname 
           instance default int64 get_LongIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2378
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int64 SourcesForIL.SampleEntity::'<LongIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_LongIndex

    // method line 97
    .method public hidebysig specialname 
           instance default void set_LongIndex (int64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2380
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int64 SourcesForIL.SampleEntity::'<LongIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_LongIndex

    // method line 98
    .method public hidebysig specialname 
           instance default unsigned int32 get_UnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2389
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int32 SourcesForIL.SampleEntity::'<UnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_UnsignedIndex

    // method line 99
    .method public hidebysig specialname 
           instance default void set_UnsignedIndex (unsigned int32 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2391
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int32 SourcesForIL.SampleEntity::'<UnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_UnsignedIndex

    // method line 100
    .method public hidebysig specialname 
           instance default unsigned int16 get_ShortUnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x239a
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int16 SourcesForIL.SampleEntity::'<ShortUnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ShortUnsignedIndex

    // method line 101
    .method public hidebysig specialname 
           instance default void set_ShortUnsignedIndex (unsigned int16 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23a2
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int16 SourcesForIL.SampleEntity::'<ShortUnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ShortUnsignedIndex

    // method line 102
    .method public hidebysig specialname 
           instance default unsigned int64 get_LongUnsignedIndex ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23ab
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld unsigned int64 SourcesForIL.SampleEntity::'<LongUnsignedIndex>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_LongUnsignedIndex

    // method line 103
    .method public hidebysig specialname 
           instance default void set_LongUnsignedIndex (unsigned int64 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23b3
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld unsigned int64 SourcesForIL.SampleEntity::'<LongUnsignedIndex>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_LongUnsignedIndex

    // method line 104
    .method public hidebysig specialname 
           instance default int32[] get_References ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23bc
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld int32[] SourcesForIL.SampleEntity::'<References>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_References

    // method line 105
    .method public hidebysig specialname 
           instance default void set_References (int32[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23c4
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld int32[] SourcesForIL.SampleEntity::'<References>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_References

    // method line 106
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Guid[] get_ChildrenIds ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23cd
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Guid[] SourcesForIL.SampleEntity::'<ChildrenIds>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_ChildrenIds

    // method line 107
    .method public hidebysig specialname 
           instance default void set_ChildrenIds (valuetype [mscorlib]System.Guid[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23d5
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Guid[] SourcesForIL.SampleEntity::'<ChildrenIds>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_ChildrenIds

    // method line 108
    .method public hidebysig specialname 
           instance default class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> get_Schedule ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23de
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> SourcesForIL.SampleEntity::'<Schedule>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Schedule

    // method line 109
    .method public hidebysig specialname 
           instance default void set_Schedule (class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23e6
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> SourcesForIL.SampleEntity::'<Schedule>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Schedule

    // method line 110
    .method public hidebysig specialname 
           instance default string[] get_Tags ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23ef
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string[] SourcesForIL.SampleEntity::'<Tags>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Tags

    // method line 111
    .method public hidebysig specialname 
           instance default void set_Tags (string[] 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x23f7
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string[] SourcesForIL.SampleEntity::'<Tags>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Tags

    // method line 112
    .method public hidebysig specialname 
           instance default valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> get_Discount ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2400
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> SourcesForIL.SampleEntity::'<Discount>k__BackingField'
	IL_0006:  ret 
    } // end of method SampleEntity::get_Discount

    // method line 113
    .method public hidebysig specialname 
           instance default void set_Discount (valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2408
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> SourcesForIL.SampleEntity::'<Discount>k__BackingField'
	IL_0007:  ret 
    } // end of method SampleEntity::set_Discount

    // method line 114
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2411
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  nop 
	IL_0007:  ret 
    } // end of method SampleEntity::.ctor

	.property instance valuetype [mscorlib]System.Guid Id ()
	{
		.get instance default valuetype [mscorlib]System.Guid SourcesForIL.SampleEntity::get_Id () 
		.set instance default void SourcesForIL.SampleEntity::set_Id (valuetype [mscorlib]System.Guid 'value') 
	}
	.property instance string Name ()
	{
		.get instance default string SourcesForIL.SampleEntity::get_Name () 
		.set instance default void SourcesForIL.SampleEntity::set_Name (string 'value') 
	}
	.property instance string ShortName ()
	{
		.get instance default string SourcesForIL.SampleEntity::get_ShortName () 
		.set instance default void SourcesForIL.SampleEntity::set_ShortName (string 'value') 
	}
	.property instance string Description ()
	{
		.get instance default string SourcesForIL.SampleEntity::get_Description () 
		.set instance default void SourcesForIL.SampleEntity::set_Description (string 'value') 
	}
	.property instance char Mark ()
	{
		.get instance default char SourcesForIL.SampleEntity::get_Mark () 
		.set instance default void SourcesForIL.SampleEntity::set_Mark (char 'value') 
	}
	.property instance unsigned int8 Age ()
	{
		.get instance default unsigned int8 SourcesForIL.SampleEntity::get_Age () 
		.set instance default void SourcesForIL.SampleEntity::set_Age (unsigned int8 'value') 
	}
	.property instance int32 Index ()
	{
		.get instance default int32 SourcesForIL.SampleEntity::get_Index () 
		.set instance default void SourcesForIL.SampleEntity::set_Index (int32 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime CreatedAt ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::get_CreatedAt () 
		.set instance default void SourcesForIL.SampleEntity::set_CreatedAt (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime CreatedAtUtc ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::get_CreatedAtUtc () 
		.set instance default void SourcesForIL.SampleEntity::set_CreatedAtUtc (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTime LastAccessed ()
	{
		.get instance default valuetype [mscorlib]System.DateTime SourcesForIL.SampleEntity::get_LastAccessed () 
		.set instance default void SourcesForIL.SampleEntity::set_LastAccessed (valuetype [mscorlib]System.DateTime 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTimeOffset ChangedAt ()
	{
		.get instance default valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::get_ChangedAt () 
		.set instance default void SourcesForIL.SampleEntity::set_ChangedAt (valuetype [mscorlib]System.DateTimeOffset 'value') 
	}
	.property instance valuetype [mscorlib]System.DateTimeOffset ChangedAtUtc ()
	{
		.get instance default valuetype [mscorlib]System.DateTimeOffset SourcesForIL.SampleEntity::get_ChangedAtUtc () 
		.set instance default void SourcesForIL.SampleEntity::set_ChangedAtUtc (valuetype [mscorlib]System.DateTimeOffset 'value') 
	}
	.property instance float32 Weigth ()
	{
		.get instance default float32 SourcesForIL.SampleEntity::get_Weigth () 
		.set instance default void SourcesForIL.SampleEntity::set_Weigth (float32 'value') 
	}
	.property instance float64 Rating ()
	{
		.get instance default float64 SourcesForIL.SampleEntity::get_Rating () 
		.set instance default void SourcesForIL.SampleEntity::set_Rating (float64 'value') 
	}
	.property instance valuetype [mscorlib]System.Decimal Price ()
	{
		.get instance default valuetype [mscorlib]System.Decimal SourcesForIL.SampleEntity::get_Price () 
		.set instance default void SourcesForIL.SampleEntity::set_Price (valuetype [mscorlib]System.Decimal 'value') 
	}
	.property instance bool IsVisible ()
	{
		.get instance default bool SourcesForIL.SampleEntity::get_IsVisible () 
		.set instance default void SourcesForIL.SampleEntity::set_IsVisible (bool 'value') 
	}
	.property instance int16 ShortIndex ()
	{
		.get instance default int16 SourcesForIL.SampleEntity::get_ShortIndex () 
		.set instance default void SourcesForIL.SampleEntity::set_ShortIndex (int16 'value') 
	}
	.property instance int64 LongIndex ()
	{
		.get instance default int64 SourcesForIL.SampleEntity::get_LongIndex () 
		.set instance default void SourcesForIL.SampleEntity::set_LongIndex (int64 'value') 
	}
	.property instance unsigned int32 UnsignedIndex ()
	{
		.get instance default unsigned int32 SourcesForIL.SampleEntity::get_UnsignedIndex () 
		.set instance default void SourcesForIL.SampleEntity::set_UnsignedIndex (unsigned int32 'value') 
	}
	.property instance unsigned int16 ShortUnsignedIndex ()
	{
		.get instance default unsigned int16 SourcesForIL.SampleEntity::get_ShortUnsignedIndex () 
		.set instance default void SourcesForIL.SampleEntity::set_ShortUnsignedIndex (unsigned int16 'value') 
	}
	.property instance unsigned int64 LongUnsignedIndex ()
	{
		.get instance default unsigned int64 SourcesForIL.SampleEntity::get_LongUnsignedIndex () 
		.set instance default void SourcesForIL.SampleEntity::set_LongUnsignedIndex (unsigned int64 'value') 
	}
	.property instance int32[] References ()
	{
		.get instance default int32[] SourcesForIL.SampleEntity::get_References () 
		.set instance default void SourcesForIL.SampleEntity::set_References (int32[] 'value') 
	}
	.property instance valuetype [mscorlib]System.Guid[] ChildrenIds ()
	{
		.get instance default valuetype [mscorlib]System.Guid[] SourcesForIL.SampleEntity::get_ChildrenIds () 
		.set instance default void SourcesForIL.SampleEntity::set_ChildrenIds (valuetype [mscorlib]System.Guid[] 'value') 
	}
	.property instance class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> Schedule ()
	{
		.get instance default class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> SourcesForIL.SampleEntity::get_Schedule () 
		.set instance default void SourcesForIL.SampleEntity::set_Schedule (class [mscorlib]System.Collections.Generic.List`1<valuetype [mscorlib]System.DateTimeOffset> 'value') 
	}
	.property instance string[] Tags ()
	{
		.get instance default string[] SourcesForIL.SampleEntity::get_Tags () 
		.set instance default void SourcesForIL.SampleEntity::set_Tags (string[] 'value') 
	}
	.property instance valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> Discount ()
	{
		.get instance default valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> SourcesForIL.SampleEntity::get_Discount () 
		.set instance default void SourcesForIL.SampleEntity::set_Discount (valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Decimal> 'value') 
	}
  } // end of class SourcesForIL.SampleEntity
}

.namespace SourcesForIL
{
  .class public auto ansi abstract sealed beforefieldinit Semifactures
  	extends [netstandard]System.Object
  {
    .field private static literal  int32 NullBytesCout = int32(0xffffffff)

    // method line 115
    .method private static hidebysig 
           default void WritePrimitiveTypeProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x241c
	// Code size 28 (0x1c)
	.maxstack 4
	.locals init (
		int32	V_0,
		unsigned int8[]	V_1)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance int32 class SourcesForIL.Entity::get_Index()
	IL_0007:  stloc.0 
	IL_0008:  ldloc.0 
	IL_0009:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_000e:  stloc.1 
	IL_000f:  ldarg.0 
	IL_0010:  ldloc.1 
	IL_0011:  ldc.i4.0 
	IL_0012:  ldloc.1 
	IL_0013:  ldlen 
	IL_0014:  conv.i4 
	IL_0015:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_001a:  nop 
	IL_001b:  ret 
    } // end of method Semifactures::WritePrimitiveTypeProperty

    // method line 116
    .method private static hidebysig 
           default void WriteGuidProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2444
	// Code size 29 (0x1d)
	.maxstack 4
	.locals init (
		valuetype [mscorlib]System.Guid	V_0,
		unsigned int8[]	V_1)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance valuetype [mscorlib]System.Guid class SourcesForIL.Entity::get_Id()
	IL_0007:  stloc.0 
	IL_0008:  ldloca.s 0
	IL_000a:  call instance unsigned int8[] valuetype [mscorlib]System.Guid::ToByteArray()
	IL_000f:  stloc.1 
	IL_0010:  ldarg.0 
	IL_0011:  ldloc.1 
	IL_0012:  ldc.i4.0 
	IL_0013:  ldloc.1 
	IL_0014:  ldlen 
	IL_0015:  conv.i4 
	IL_0016:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_001b:  nop 
	IL_001c:  ret 
    } // end of method Semifactures::WriteGuidProperty

    // method line 117
    .method private static hidebysig 
           default void WriteDateTimeProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2470
	// Code size 53 (0x35)
	.maxstack 4
	.locals init (
		valuetype [mscorlib]System.DateTime	V_0,
		valuetype [mscorlib]System.DateTimeKind	V_1,
		int64	V_2,
		unsigned int8[]	V_3)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance valuetype [mscorlib]System.DateTime class SourcesForIL.Entity::get_CreatedAt()
	IL_0007:  stloc.0 
	IL_0008:  ldloca.s 0
	IL_000a:  call instance valuetype [mscorlib]System.DateTimeKind valuetype [mscorlib]System.DateTime::get_Kind()
	IL_000f:  stloc.1 
	IL_0010:  ldarg.0 
	IL_0011:  ldloc.1 
	IL_0012:  conv.u1 
	IL_0013:  callvirt instance void class [mscorlib]System.IO.Stream::WriteByte(unsigned int8)
	IL_0018:  nop 
	IL_0019:  ldloca.s 0
	IL_001b:  call instance int64 valuetype [mscorlib]System.DateTime::get_Ticks()
	IL_0020:  stloc.2 
	IL_0021:  ldloc.2 
	IL_0022:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int64)
	IL_0027:  stloc.3 
	IL_0028:  ldarg.0 
	IL_0029:  ldloc.3 
	IL_002a:  ldc.i4.0 
	IL_002b:  ldloc.3 
	IL_002c:  ldlen 
	IL_002d:  conv.i4 
	IL_002e:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0033:  nop 
	IL_0034:  ret 
    } // end of method Semifactures::WriteDateTimeProperty

    // method line 118
    .method private static hidebysig 
           default void WriteDateTimeOffsetProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x24b4
	// Code size 70 (0x46)
	.maxstack 4
	.locals init (
		valuetype [mscorlib]System.DateTimeOffset	V_0,
		unsigned int8[]	V_1,
		int64	V_2,
		unsigned int8[]	V_3,
		valuetype [mscorlib]System.TimeSpan	V_4)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance valuetype [mscorlib]System.DateTimeOffset class SourcesForIL.Entity::get_ChangedAt()
	IL_0007:  stloc.0 
	IL_0008:  ldloca.s 0
	IL_000a:  call instance valuetype [mscorlib]System.TimeSpan valuetype [mscorlib]System.DateTimeOffset::get_Offset()
	IL_000f:  stloc.s 4
	IL_0011:  ldloca.s 4
	IL_0013:  call instance int64 valuetype [mscorlib]System.TimeSpan::get_Ticks()
	IL_0018:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int64)
	IL_001d:  stloc.1 
	IL_001e:  ldarg.0 
	IL_001f:  ldloc.1 
	IL_0020:  ldc.i4.0 
	IL_0021:  ldloc.1 
	IL_0022:  ldlen 
	IL_0023:  conv.i4 
	IL_0024:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0029:  nop 
	IL_002a:  ldloca.s 0
	IL_002c:  call instance int64 valuetype [mscorlib]System.DateTimeOffset::get_Ticks()
	IL_0031:  stloc.2 
	IL_0032:  ldloc.2 
	IL_0033:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int64)
	IL_0038:  stloc.3 
	IL_0039:  ldarg.0 
	IL_003a:  ldloc.3 
	IL_003b:  ldc.i4.0 
	IL_003c:  ldloc.3 
	IL_003d:  ldlen 
	IL_003e:  conv.i4 
	IL_003f:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0044:  nop 
	IL_0045:  ret 
    } // end of method Semifactures::WriteDateTimeOffsetProperty

    // method line 119
    .method private static hidebysig 
           default void WriteStringProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2508
	// Code size 95 (0x5f)
	.maxstack 4
	.locals init (
		string	V_0,
		bool	V_1,
		unsigned int8[]	V_2,
		int32	V_3,
		unsigned int8[]	V_4,
		unsigned int8[]	V_5)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance string class SourcesForIL.Entity::get_Name()
	IL_0007:  stloc.0 
	IL_0008:  ldloc.0 
	IL_0009:  ldnull 
	IL_000a:  cgt.un 
	IL_000c:  stloc.1 
	IL_000d:  ldloc.1 
	IL_000e:  brfalse.s IL_0046

	IL_0010:  nop 
	IL_0011:  call class [mscorlib]System.Text.Encoding class [mscorlib]System.Text.Encoding::get_UTF8()
	IL_0016:  ldloc.0 
	IL_0017:  callvirt instance unsigned int8[] class [mscorlib]System.Text.Encoding::GetBytes(string)
	IL_001c:  stloc.2 
	IL_001d:  ldloc.2 
	IL_001e:  ldlen 
	IL_001f:  conv.i4 
	IL_0020:  stloc.3 
	IL_0021:  ldloc.3 
	IL_0022:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_0027:  stloc.s 4
	IL_0029:  ldarg.0 
	IL_002a:  ldloc.s 4
	IL_002c:  ldc.i4.0 
	IL_002d:  ldloc.s 4
	IL_002f:  ldlen 
	IL_0030:  conv.i4 
	IL_0031:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0036:  nop 
	IL_0037:  ldarg.0 
	IL_0038:  ldloc.2 
	IL_0039:  ldc.i4.0 
	IL_003a:  ldloc.2 
	IL_003b:  ldlen 
	IL_003c:  conv.i4 
	IL_003d:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0042:  nop 
	IL_0043:  nop 
	IL_0044:  br.s IL_005e

	IL_0046:  nop 
	IL_0047:  ldc.i4.m1 
	IL_0048:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_004d:  stloc.s 5
	IL_004f:  ldarg.0 
	IL_0050:  ldloc.s 5
	IL_0052:  ldc.i4.0 
	IL_0053:  ldloc.s 5
	IL_0055:  ldlen 
	IL_0056:  conv.i4 
	IL_0057:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_005c:  nop 
	IL_005d:  nop 
	IL_005e:  ret 
    } // end of method Semifactures::WriteStringProperty

    // method line 120
    .method private static hidebysig 
           default void WriteArrayProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2574
	// Code size 117 (0x75)
	.maxstack 4
	.locals init (
		int32[]	V_0,
		bool	V_1,
		int32	V_2,
		unsigned int8[]	V_3,
		int32	V_4,
		unsigned int8[]	V_5,
		bool	V_6,
		unsigned int8[]	V_7)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance int32[] class SourcesForIL.Entity::get_References()
	IL_0007:  stloc.0 
	IL_0008:  ldloc.0 
	IL_0009:  ldnull 
	IL_000a:  cgt.un 
	IL_000c:  stloc.1 
	IL_000d:  ldloc.1 
	IL_000e:  brfalse.s IL_005c

	IL_0010:  nop 
	IL_0011:  ldloc.0 
	IL_0012:  ldlen 
	IL_0013:  conv.i4 
	IL_0014:  stloc.2 
	IL_0015:  ldloc.2 
	IL_0016:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_001b:  stloc.3 
	IL_001c:  ldarg.0 
	IL_001d:  ldloc.3 
	IL_001e:  ldc.i4.0 
	IL_001f:  ldloc.3 
	IL_0020:  ldlen 
	IL_0021:  conv.i4 
	IL_0022:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0027:  nop 
	IL_0028:  ldc.i4.0 
	IL_0029:  stloc.s 4
	IL_002b:  br.s IL_004e

	IL_002d:  nop 
	IL_002e:  ldloc.0 
	IL_002f:  ldloc.s 4
	IL_0031:  ldelem.i4 
	IL_0032:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_0037:  stloc.s 5
	IL_0039:  ldarg.0 
	IL_003a:  ldloc.s 5
	IL_003c:  ldc.i4.0 
	IL_003d:  ldloc.s 5
	IL_003f:  ldlen 
	IL_0040:  conv.i4 
	IL_0041:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0046:  nop 
	IL_0047:  nop 
	IL_0048:  ldloc.s 4
	IL_004a:  ldc.i4.1 
	IL_004b:  add 
	IL_004c:  stloc.s 4
	IL_004e:  ldloc.s 4
	IL_0050:  ldloc.2 
	IL_0051:  clt 
	IL_0053:  stloc.s 6
	IL_0055:  ldloc.s 6
	IL_0057:  brtrue.s IL_002d

	IL_0059:  nop 
	IL_005a:  br.s IL_0074

	IL_005c:  nop 
	IL_005d:  ldc.i4.m1 
	IL_005e:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_0063:  stloc.s 7
	IL_0065:  ldarg.0 
	IL_0066:  ldloc.s 7
	IL_0068:  ldc.i4.0 
	IL_0069:  ldloc.s 7
	IL_006b:  ldlen 
	IL_006c:  conv.i4 
	IL_006d:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_0072:  nop 
	IL_0073:  nop 
	IL_0074:  ret 
    } // end of method Semifactures::WriteArrayProperty

    // method line 121
    .method private static hidebysig 
           default void WriteCollectionProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x25f8
	// Code size 142 (0x8e)
	.maxstack 4
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<int16>	V_0,
		bool	V_1,
		int32	V_2,
		unsigned int8[]	V_3,
		valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int16>	V_4,
		int16	V_5,
		unsigned int8[]	V_6,
		unsigned int8[]	V_7)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance class [mscorlib]System.Collections.Generic.List`1<int16> class SourcesForIL.Entity::get_Weeks()
	IL_0007:  stloc.0 
	IL_0008:  ldloc.0 
	IL_0009:  ldnull 
	IL_000a:  cgt.un 
	IL_000c:  stloc.1 
	IL_000d:  ldloc.1 
	IL_000e:  brfalse.s IL_0075

	IL_0010:  nop 
	IL_0011:  ldloc.0 
	IL_0012:  callvirt instance int32 class [mscorlib]System.Collections.Generic.List`1<int16>::get_Count()
	IL_0017:  stloc.2 
	IL_0018:  ldloc.2 
	IL_0019:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_001e:  stloc.3 
	IL_001f:  ldarg.0 
	IL_0020:  ldloc.3 
	IL_0021:  ldc.i4.0 
	IL_0022:  ldloc.3 
	IL_0023:  ldlen 
	IL_0024:  conv.i4 
	IL_0025:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_002a:  nop 
	IL_002b:  nop 
	IL_002c:  ldloc.0 
	IL_002d:  callvirt instance valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<!0> class [mscorlib]System.Collections.Generic.List`1<int16>::GetEnumerator()
	IL_0032:  stloc.s 4
	.try { // 0
	  IL_0034:  br.s IL_0058

	  IL_0036:  ldloca.s 4
	  IL_0038:  call instance !0 valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int16>::get_Current()
	  IL_003d:  stloc.s 5
	  IL_003f:  nop 
	  IL_0040:  ldloc.s 5
	  IL_0042:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int16)
	  IL_0047:  stloc.s 6
	  IL_0049:  ldarg.0 
	  IL_004a:  ldloc.s 6
	  IL_004c:  ldc.i4.0 
	  IL_004d:  ldloc.s 6
	  IL_004f:  ldlen 
	  IL_0050:  conv.i4 
	  IL_0051:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	  IL_0056:  nop 
	  IL_0057:  nop 
	  IL_0058:  ldloca.s 4
	  IL_005a:  call instance bool valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int16>::MoveNext()
	  IL_005f:  brtrue.s IL_0036

	  IL_0061:  leave.s IL_0072

	} // end .try 0
	finally  { // 0
	  IL_0063:  ldloca.s 4
	  IL_0065:  constrained. valuetype [mscorlib]System.Collections.Generic.List`1/Enumerator<int16>
	  IL_006b:  callvirt instance void class [mscorlib]System.IDisposable::Dispose()
	  IL_0070:  nop 
	  IL_0071:  endfinally 
	} // end handler 0
	IL_0072:  nop 
	IL_0073:  br.s IL_008d

	IL_0075:  nop 
	IL_0076:  ldc.i4.m1 
	IL_0077:  call unsigned int8[] class [mscorlib]System.BitConverter::GetBytes(int32)
	IL_007c:  stloc.s 7
	IL_007e:  ldarg.0 
	IL_007f:  ldloc.s 7
	IL_0081:  ldc.i4.0 
	IL_0082:  ldloc.s 7
	IL_0084:  ldlen 
	IL_0085:  conv.i4 
	IL_0086:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_008b:  nop 
	IL_008c:  nop 
	IL_008d:  ret 
    } // end of method Semifactures::WriteCollectionProperty

    // method line 122
    .method private static hidebysig 
           default void WriteNullableProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x26a4
	// Code size 79 (0x4f)
	.maxstack 4
	.locals init (
		valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>	V_0,
		bool	V_1,
		unsigned int8	V_2,
		bool	V_3,
		valuetype [mscorlib]System.Guid	V_4,
		unsigned int8[]	V_5)
	IL_0000:  nop 
	IL_0001:  ldarg.1 
	IL_0002:  callvirt instance valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid> class SourcesForIL.Entity::get_AlternativeId()
	IL_0007:  stloc.0 
	IL_0008:  ldloca.s 0
	IL_000a:  call instance bool valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>::get_HasValue()
	IL_000f:  ldc.i4.0 
	IL_0010:  ceq 
	IL_0012:  stloc.1 
	IL_0013:  ldloc.1 
	IL_0014:  brtrue.s IL_0019

	IL_0016:  ldc.i4.0 
	IL_0017:  br.s IL_001a

	IL_0019:  ldc.i4.1 
	IL_001a:  conv.u1 
	IL_001b:  stloc.2 
	IL_001c:  ldarg.0 
	IL_001d:  ldloc.2 
	IL_001e:  callvirt instance void class [mscorlib]System.IO.Stream::WriteByte(unsigned int8)
	IL_0023:  nop 
	IL_0024:  ldloc.1 
	IL_0025:  ldc.i4.0 
	IL_0026:  ceq 
	IL_0028:  stloc.3 
	IL_0029:  ldloc.3 
	IL_002a:  brfalse.s IL_004e

	IL_002c:  nop 
	IL_002d:  ldloca.s 0
	IL_002f:  call instance !0 valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>::get_Value()
	IL_0034:  stloc.s 4
	IL_0036:  ldloca.s 4
	IL_0038:  call instance unsigned int8[] valuetype [mscorlib]System.Guid::ToByteArray()
	IL_003d:  stloc.s 5
	IL_003f:  ldarg.0 
	IL_0040:  ldloc.s 5
	IL_0042:  ldc.i4.0 
	IL_0043:  ldloc.s 5
	IL_0045:  ldlen 
	IL_0046:  conv.i4 
	IL_0047:  callvirt instance void class [mscorlib]System.IO.Stream::Write(unsigned int8[], int32, int32)
	IL_004c:  nop 
	IL_004d:  nop 
	IL_004e:  ret 
    } // end of method Semifactures::WriteNullableProperty

    // method line 123
    .method private static hidebysig 
           default void ReadPrimitiveTypeProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2700
	// Code size 35 (0x23)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0)
	IL_0000:  nop 
	IL_0001:  ldc.i4.4 
	IL_0002:  newarr [netstandard]System.Byte
	IL_0007:  stloc.0 
	IL_0008:  ldarg.0 
	IL_0009:  ldloc.0 
	IL_000a:  ldc.i4.0 
	IL_000b:  ldloc.0 
	IL_000c:  ldlen 
	IL_000d:  conv.i4 
	IL_000e:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0013:  pop 
	IL_0014:  ldarg.1 
	IL_0015:  ldloc.0 
	IL_0016:  ldc.i4.0 
	IL_0017:  call int32 class [mscorlib]System.BitConverter::ToInt32(unsigned int8[], int32)
	IL_001c:  callvirt instance void class SourcesForIL.Entity::set_Index(int32)
	IL_0021:  nop 
	IL_0022:  ret 
    } // end of method Semifactures::ReadPrimitiveTypeProperty

    // method line 124
    .method private static hidebysig 
           default void ReadGuidProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2730
	// Code size 35 (0x23)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0)
	IL_0000:  nop 
	IL_0001:  ldc.i4.s 0x10
	IL_0003:  newarr [netstandard]System.Byte
	IL_0008:  stloc.0 
	IL_0009:  ldarg.0 
	IL_000a:  ldloc.0 
	IL_000b:  ldc.i4.0 
	IL_000c:  ldloc.0 
	IL_000d:  ldlen 
	IL_000e:  conv.i4 
	IL_000f:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0014:  pop 
	IL_0015:  ldarg.1 
	IL_0016:  ldloc.0 
	IL_0017:  newobj instance void valuetype [mscorlib]System.Guid::'.ctor'(unsigned int8[])
	IL_001c:  callvirt instance void class SourcesForIL.Entity::set_Id(valuetype [mscorlib]System.Guid)
	IL_0021:  nop 
	IL_0022:  ret 
    } // end of method Semifactures::ReadGuidProperty

    // method line 125
    .method private static hidebysig 
           default void ReadDateTimeValue (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2760
	// Code size 48 (0x30)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		valuetype [mscorlib]System.DateTimeKind	V_1,
		int64	V_2)
	IL_0000:  nop 
	IL_0001:  ldc.i4.s 0x09
	IL_0003:  newarr [netstandard]System.Byte
	IL_0008:  stloc.0 
	IL_0009:  ldarg.0 
	IL_000a:  ldloc.0 
	IL_000b:  ldc.i4.0 
	IL_000c:  ldloc.0 
	IL_000d:  ldlen 
	IL_000e:  conv.i4 
	IL_000f:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0014:  pop 
	IL_0015:  ldloc.0 
	IL_0016:  ldc.i4.0 
	IL_0017:  ldelem.u1 
	IL_0018:  stloc.1 
	IL_0019:  ldloc.0 
	IL_001a:  ldc.i4.1 
	IL_001b:  call int64 class [mscorlib]System.BitConverter::ToInt64(unsigned int8[], int32)
	IL_0020:  stloc.2 
	IL_0021:  ldarg.1 
	IL_0022:  ldloc.2 
	IL_0023:  ldloc.1 
	IL_0024:  newobj instance void valuetype [mscorlib]System.DateTime::'.ctor'(int64, valuetype [mscorlib]System.DateTimeKind)
	IL_0029:  callvirt instance void class SourcesForIL.Entity::set_CreatedAt(valuetype [mscorlib]System.DateTime)
	IL_002e:  nop 
	IL_002f:  ret 
    } // end of method Semifactures::ReadDateTimeValue

    // method line 126
    .method private static hidebysig 
           default void ReadDateTimeOffsetProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x279c
	// Code size 57 (0x39)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		valuetype [mscorlib]System.TimeSpan	V_1,
		int64	V_2)
	IL_0000:  nop 
	IL_0001:  ldc.i4.s 0x10
	IL_0003:  newarr [netstandard]System.Byte
	IL_0008:  stloc.0 
	IL_0009:  ldarg.0 
	IL_000a:  ldloc.0 
	IL_000b:  ldc.i4.0 
	IL_000c:  ldloc.0 
	IL_000d:  ldlen 
	IL_000e:  conv.i4 
	IL_000f:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0014:  pop 
	IL_0015:  ldloc.0 
	IL_0016:  ldc.i4.0 
	IL_0017:  call int64 class [mscorlib]System.BitConverter::ToInt64(unsigned int8[], int32)
	IL_001c:  call valuetype [mscorlib]System.TimeSpan valuetype [mscorlib]System.TimeSpan::FromTicks(int64)
	IL_0021:  stloc.1 
	IL_0022:  ldloc.0 
	IL_0023:  ldc.i4.8 
	IL_0024:  call int64 class [mscorlib]System.BitConverter::ToInt64(unsigned int8[], int32)
	IL_0029:  stloc.2 
	IL_002a:  ldarg.1 
	IL_002b:  ldloc.2 
	IL_002c:  ldloc.1 
	IL_002d:  newobj instance void valuetype [mscorlib]System.DateTimeOffset::'.ctor'(int64, valuetype [mscorlib]System.TimeSpan)
	IL_0032:  callvirt instance void class SourcesForIL.Entity::set_ChangedAt(valuetype [mscorlib]System.DateTimeOffset)
	IL_0037:  nop 
	IL_0038:  ret 
    } // end of method Semifactures::ReadDateTimeOffsetProperty

    // method line 127
    .method private static hidebysig 
           default void ReadArrayProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x27e4
	// Code size 128 (0x80)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		int32	V_1,
		bool	V_2,
		int32[]	V_3,
		int32	V_4,
		unsigned int8[]	V_5,
		int32	V_6,
		bool	V_7)
	IL_0000:  nop 
	IL_0001:  ldc.i4.4 
	IL_0002:  newarr [netstandard]System.Byte
	IL_0007:  stloc.0 
	IL_0008:  ldarg.0 
	IL_0009:  ldloc.0 
	IL_000a:  ldc.i4.0 
	IL_000b:  ldloc.0 
	IL_000c:  ldlen 
	IL_000d:  conv.i4 
	IL_000e:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0013:  pop 
	IL_0014:  ldloc.0 
	IL_0015:  ldc.i4.0 
	IL_0016:  call int32 class [mscorlib]System.BitConverter::ToInt32(unsigned int8[], int32)
	IL_001b:  stloc.1 
	IL_001c:  ldloc.1 
	IL_001d:  ldc.i4.m1 
	IL_001e:  cgt 
	IL_0020:  stloc.2 
	IL_0021:  ldloc.2 
	IL_0022:  brfalse.s IL_0075

	IL_0024:  nop 
	IL_0025:  ldloc.1 
	IL_0026:  newarr [netstandard]System.Int32
	IL_002b:  stloc.3 
	IL_002c:  ldc.i4.0 
	IL_002d:  stloc.s 4
	IL_002f:  br.s IL_005f

	IL_0031:  nop 
	IL_0032:  ldc.i4.4 
	IL_0033:  newarr [netstandard]System.Byte
	IL_0038:  stloc.s 5
	IL_003a:  ldarg.0 
	IL_003b:  ldloc.s 5
	IL_003d:  ldc.i4.0 
	IL_003e:  ldloc.s 5
	IL_0040:  ldlen 
	IL_0041:  conv.i4 
	IL_0042:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0047:  pop 
	IL_0048:  ldloc.s 5
	IL_004a:  ldc.i4.0 
	IL_004b:  call int32 class [mscorlib]System.BitConverter::ToInt32(unsigned int8[], int32)
	IL_0050:  stloc.s 6
	IL_0052:  ldloc.3 
	IL_0053:  ldloc.s 4
	IL_0055:  ldloc.s 6
	IL_0057:  stelem.i4 
	IL_0058:  nop 
	IL_0059:  ldloc.s 4
	IL_005b:  ldc.i4.1 
	IL_005c:  add 
	IL_005d:  stloc.s 4
	IL_005f:  ldloc.s 4
	IL_0061:  ldloc.1 
	IL_0062:  clt 
	IL_0064:  stloc.s 7
	IL_0066:  ldloc.s 7
	IL_0068:  brtrue.s IL_0031

	IL_006a:  ldarg.1 
	IL_006b:  ldloc.3 
	IL_006c:  callvirt instance void class SourcesForIL.Entity::set_References(int32[])
	IL_0071:  nop 
	IL_0072:  nop 
	IL_0073:  br.s IL_007f

	IL_0075:  nop 
	IL_0076:  ldarg.1 
	IL_0077:  ldnull 
	IL_0078:  callvirt instance void class SourcesForIL.Entity::set_References(int32[])
	IL_007d:  nop 
	IL_007e:  nop 
	IL_007f:  ret 
    } // end of method Semifactures::ReadArrayProperty

    // method line 128
    .method private static hidebysig 
           default void ReadCollectionProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2870
	// Code size 130 (0x82)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		int32	V_1,
		bool	V_2,
		class [mscorlib]System.Collections.Generic.List`1<int16>	V_3,
		unsigned int8[]	V_4,
		int32	V_5,
		int16	V_6,
		bool	V_7)
	IL_0000:  nop 
	IL_0001:  ldc.i4.4 
	IL_0002:  newarr [netstandard]System.Byte
	IL_0007:  stloc.0 
	IL_0008:  ldarg.0 
	IL_0009:  ldloc.0 
	IL_000a:  ldc.i4.0 
	IL_000b:  ldloc.0 
	IL_000c:  ldlen 
	IL_000d:  conv.i4 
	IL_000e:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0013:  pop 
	IL_0014:  ldloc.0 
	IL_0015:  ldc.i4.0 
	IL_0016:  call int32 class [mscorlib]System.BitConverter::ToInt32(unsigned int8[], int32)
	IL_001b:  stloc.1 
	IL_001c:  ldloc.1 
	IL_001d:  ldc.i4.m1 
	IL_001e:  cgt 
	IL_0020:  stloc.2 
	IL_0021:  ldloc.2 
	IL_0022:  brfalse.s IL_0077

	IL_0024:  nop 
	IL_0025:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<int16>::'.ctor'()
	IL_002a:  stloc.3 
	IL_002b:  ldc.i4.2 
	IL_002c:  newarr [netstandard]System.Byte
	IL_0031:  stloc.s 4
	IL_0033:  ldc.i4.0 
	IL_0034:  stloc.s 5
	IL_0036:  br.s IL_0061

	IL_0038:  nop 
	IL_0039:  ldarg.0 
	IL_003a:  ldloc.s 4
	IL_003c:  ldc.i4.0 
	IL_003d:  ldloc.s 4
	IL_003f:  ldlen 
	IL_0040:  conv.i4 
	IL_0041:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0046:  pop 
	IL_0047:  ldloc.s 4
	IL_0049:  ldc.i4.0 
	IL_004a:  call int16 class [mscorlib]System.BitConverter::ToInt16(unsigned int8[], int32)
	IL_004f:  stloc.s 6
	IL_0051:  ldloc.3 
	IL_0052:  ldloc.s 6
	IL_0054:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<int16>::Add(!0)
	IL_0059:  nop 
	IL_005a:  nop 
	IL_005b:  ldloc.s 5
	IL_005d:  ldc.i4.1 
	IL_005e:  add 
	IL_005f:  stloc.s 5
	IL_0061:  ldloc.s 5
	IL_0063:  ldloc.1 
	IL_0064:  clt 
	IL_0066:  stloc.s 7
	IL_0068:  ldloc.s 7
	IL_006a:  brtrue.s IL_0038

	IL_006c:  ldarg.1 
	IL_006d:  ldloc.3 
	IL_006e:  callvirt instance void class SourcesForIL.Entity::set_Weeks(class [mscorlib]System.Collections.Generic.List`1<int16>)
	IL_0073:  nop 
	IL_0074:  nop 
	IL_0075:  br.s IL_0081

	IL_0077:  nop 
	IL_0078:  ldarg.1 
	IL_0079:  ldnull 
	IL_007a:  callvirt instance void class SourcesForIL.Entity::set_Weeks(class [mscorlib]System.Collections.Generic.List`1<int16>)
	IL_007f:  nop 
	IL_0080:  nop 
	IL_0081:  ret 
    } // end of method Semifactures::ReadCollectionProperty

    // method line 129
    .method private static hidebysig 
           default void ReadNullableProperty (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2900
	// Code size 83 (0x53)
	.maxstack 4
	.locals init (
		int32	V_0,
		bool	V_1,
		bool	V_2,
		valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>	V_3,
		unsigned int8[]	V_4)
	IL_0000:  nop 
	IL_0001:  ldarg.0 
	IL_0002:  callvirt instance int32 class [mscorlib]System.IO.Stream::ReadByte()
	IL_0007:  stloc.0 
	IL_0008:  ldloc.0 
	IL_0009:  ldc.i4.1 
	IL_000a:  ceq 
	IL_000c:  stloc.1 
	IL_000d:  ldloc.1 
	IL_000e:  stloc.2 
	IL_000f:  ldloc.2 
	IL_0010:  brfalse.s IL_0026

	IL_0012:  nop 
	IL_0013:  ldarg.1 
	IL_0014:  ldloca.s 3
	IL_0016:  initobj valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>
	IL_001c:  ldloc.3 
	IL_001d:  callvirt instance void class SourcesForIL.Entity::set_AlternativeId(valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>)
	IL_0022:  nop 
	IL_0023:  nop 
	IL_0024:  br.s IL_0052

	IL_0026:  nop 
	IL_0027:  ldc.i4.s 0x10
	IL_0029:  newarr [netstandard]System.Byte
	IL_002e:  stloc.s 4
	IL_0030:  ldarg.0 
	IL_0031:  ldloc.s 4
	IL_0033:  ldc.i4.0 
	IL_0034:  ldloc.s 4
	IL_0036:  ldlen 
	IL_0037:  conv.i4 
	IL_0038:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_003d:  pop 
	IL_003e:  ldarg.1 
	IL_003f:  ldloc.s 4
	IL_0041:  newobj instance void valuetype [mscorlib]System.Guid::'.ctor'(unsigned int8[])
	IL_0046:  newobj instance void valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>::'.ctor'(!0)
	IL_004b:  callvirt instance void class SourcesForIL.Entity::set_AlternativeId(valuetype [mscorlib]System.Nullable`1<valuetype [mscorlib]System.Guid>)
	IL_0050:  nop 
	IL_0051:  nop 
	IL_0052:  ret 
    } // end of method Semifactures::ReadNullableProperty

    // method line 130
    .method private static hidebysig 
           default void ReadStringValue (class [mscorlib]System.IO.Stream 'stream', class SourcesForIL.Entity entity)  cil managed 
    {
        // Method begins at RVA 0x2960
	// Code size 85 (0x55)
	.maxstack 4
	.locals init (
		unsigned int8[]	V_0,
		int32	V_1,
		unsigned int8[]	V_2,
		bool	V_3)
	IL_0000:  nop 
	IL_0001:  ldc.i4.4 
	IL_0002:  newarr [netstandard]System.Byte
	IL_0007:  stloc.0 
	IL_0008:  ldarg.0 
	IL_0009:  ldloc.0 
	IL_000a:  ldc.i4.0 
	IL_000b:  ldloc.0 
	IL_000c:  ldlen 
	IL_000d:  conv.i4 
	IL_000e:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0013:  pop 
	IL_0014:  ldloc.0 
	IL_0015:  ldc.i4.0 
	IL_0016:  call int32 class [mscorlib]System.BitConverter::ToInt32(unsigned int8[], int32)
	IL_001b:  stloc.1 
	IL_001c:  ldloc.1 
	IL_001d:  ldc.i4.m1 
	IL_001e:  ceq 
	IL_0020:  stloc.3 
	IL_0021:  ldloc.3 
	IL_0022:  brfalse.s IL_002f

	IL_0024:  nop 
	IL_0025:  ldarg.1 
	IL_0026:  ldnull 
	IL_0027:  callvirt instance void class SourcesForIL.Entity::set_Name(string)
	IL_002c:  nop 
	IL_002d:  br.s IL_0054

	IL_002f:  ldloc.1 
	IL_0030:  newarr [netstandard]System.Byte
	IL_0035:  stloc.2 
	IL_0036:  ldarg.0 
	IL_0037:  ldloc.2 
	IL_0038:  ldc.i4.0 
	IL_0039:  ldloc.2 
	IL_003a:  ldlen 
	IL_003b:  conv.i4 
	IL_003c:  callvirt instance int32 class [mscorlib]System.IO.Stream::Read(unsigned int8[], int32, int32)
	IL_0041:  pop 
	IL_0042:  ldarg.1 
	IL_0043:  call class [mscorlib]System.Text.Encoding class [mscorlib]System.Text.Encoding::get_UTF8()
	IL_0048:  ldloc.2 
	IL_0049:  callvirt instance string class [mscorlib]System.Text.Encoding::GetString(unsigned int8[])
	IL_004e:  callvirt instance void class SourcesForIL.Entity::set_Name(string)
	IL_0053:  nop 
	IL_0054:  ret 
    } // end of method Semifactures::ReadStringValue

  } // end of class SourcesForIL.Semifactures
}

