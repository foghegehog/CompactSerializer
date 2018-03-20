# CompactSerializer
This repository contains compact and quick way of plain objects serialization for further saving them in a cache. The main idea is to enumerate the same list of object properties during write and read, saving and restoring their bytes in the exactly same sequence, without any metadata. Though, according to MSDN, Type.GetProperties() method does not guaranty returning properties in the declaration or alphabetical order, the sequence returned for the same version of the same type obviously stays identical from call to call. Thus, even re-created serializer should correctly restore previously serialized object. Sure, when the set of object properties is modified, this approach will not work, but as as indicated above, the intended use is to store data in cache. The serialization process includes saving type version, and the easiest way to handle object's source code modification is to just invalidate corresponding key in the cache. (That doesn't mean that other ways are impossible.)
<br/>
<br/>
Reflection is not considered a fast mechanism, and calling Type.GetProperties() for each serialization and deserialization operation may not be very productive. The more effective approach is to take the properties list once and generate a code with corresponding sequence of instructions. The Reflection.Emit namespace and ILGenerator class offers suitable code generation capabilities.<br/>
The compilation of emitted code can take a while, but if the system runs for a long time, that delay will be fully compensated by the performance increase of following saving/restoring operations.
<br/>
<br/>
For the initial implementation, only simple property types are supported, without classes, structures, ciricular references etc,  simple containers and Nullable. The exact list of supported types is:
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
  <li>Array&lt;T&gt; (T[]), where T - one of the types listed above</li>
  <li>Containers, implementing ICollection<T> and having parameterless constructor. (T should be one of the types listed in points 1-10)</li>  
  <li>Nullable&lt;T&gt;, where T is one of the types listed in points 1-10</li>  
</ol>
