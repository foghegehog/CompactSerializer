# CompactSerializer
This repository contains compact and quick approach for serializing plain .Net objects that have to be stored in a cache. The main idea is to enumerate the same list of object properties during write and read, and save/restore their byte representations in the exactly identical sequence, one after another, without any metadata.<br/> Though, according to MSDN, Type.GetProperties() method does not guaranty returning properties in the declaration or alphabetical order, the sequence returned for the same version of the same type obviously stays identical from call to call. Thus, even re-created serializer should correctly restore previously serialized object. Sure, when the set of object properties is modified, this approach will not work, but as as indicated above, the intended use is to store data in cache. The serialization process includes saving type version, and the easiest way to handle object's source code modification is just invalidate corresponding key in the cache upon the system's update. (That doesn't mean that other ways aren't possible.)
<br/>
<br/>
Reflection is not considered a fast mechanism, and calling Type.GetProperties() for each serialization and deserialization operation may not be very productive. The more effective approach is to take the properties list once and generate a code with corresponding sequence of instructions. The Reflection.Emit namespace and ILGenerator class offers suitable code generation capabilities.<br/>
The compilation of emitted code can take a while, but if the system runs for a long time, that delay will be fully compensated by the performance increase of following saving/restoring operations.
<br/>
<br/>
For the initial implementation, only simple property types are supported, without classes, structures, circular references etc, simple containers and Nullable. The exact list of supported types is::
<ol>
  <li>byte</li>
  <li>bool</li>
  <li>int, short, long</li>
  <li>uint, ushort, ulong</li>
  <li>double, float, decimal</li>
  <li>Guid</li>
  <li>DateTime</li>
  <li>DateTimeOffset</li>
  <li>char</li>
  <li>string</li>
  <li>Array&lt;T&gt; (T[]), where T - one of the types listed above;</li>
  <li>Containers, implementing ICollection<T> and having parameterless constructor. (T should be one of the types listed in points 1-10);</li>  
  <li>Nullable&lt;T&gt;, where T is one of the types listed in points 1-10;</li>  
</ol>
For some of them getting bytes representation is trivial, such as calling Guid.ToByteArray() or BitConverter.GetBytes(value), for other more complex logic had to be applied.
<br/>
<br/>
This implementation was compared to System.Runtime.Serialization.Formatters.Binary.BinaryFormatter and Newtonsoft JsonSerializer on performance speed and representation bytes count. When run with object of the kind it was designed for, even pure Reflection version performed faster, than these two serializers. In compactness, surely, both Reflection and Reflection.Emit realizations were superior to library analogue.
<br/>The exact experiment results were like this:
<br/>
<table>
<tr><td>Serializer</td><td>Average elapsed, ms</td><td>Size, bytes</td></tr>
<tr><td>EmitSerializer</td><td>10.9168</td><td>477</td></tr>
<tr><td>ReflectionSerializer</td><td>23.5812</td><td>477</td></tr>
<tr><td>BinaryFormatter</td><td>239.1568</td><td>1959</td></tr>
<tr><td>Newtonsoft JsonSerializer</td><td>68.4361</td><td>1157</td></tr>
</table>
EmitSerializer compiled in: 105.1458 ms
