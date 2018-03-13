using System;
using System.IO;
using System.Text;
using CompactSerializer.GeneratedSerializer.MemberInfos;

public abstract class CompactSerializerBase<TObject>
    where TObject: class, new ()
{
        public virtual string GetTypeVersion()
        {
            return typeof(TObject).Assembly.GetName().Version.ToString();
        }

        public virtual void WriteVersion(Stream stream, string version)
        {
            WriteString(stream, version);
        }

        public virtual string ReadObjectVersion(Stream stream)
        {
            return ReadString(stream);
        }

        public abstract void Serialize(TObject theObject, Stream stream);

        public abstract TObject Deserialize(Stream stream);

        protected void WriteString(Stream stream, string value)
        {
            if (value != null) 
            {
                var stringBytes = Encoding.GetBytes(value);
                var stringBytesCount = stringBytes.Length;
                var countBytes = BitConverter.GetBytes(stringBytesCount);
                stream.Write(countBytes, 0, countBytes.Length);
                stream.Write(stringBytes, 0, stringBytes.Length);
            }
            else
            {
                var countBytes = BitConverter.GetBytes(NullBytesCout);
                stream.Write(countBytes, 0, countBytes.Length);
            }
        }

        protected string ReadString(Stream stream)
        {
            var lengthBytes = new byte[TypesInfo.GetBytesCount(typeof(int))];
            stream.Read(lengthBytes, 0, lengthBytes.Length);
            var stringBytesCount = BitConverter.ToInt32(lengthBytes, 0);
            if (stringBytesCount == NullBytesCout)
            {
                return null;
            }

            var stringBytes = new byte[stringBytesCount];
            stream.Read(stringBytes, 0, stringBytes.Length);
            return Encoding.GetString(stringBytes);
        }

        protected Encoding Encoding = Encoding.UTF8;

        protected const int NullBytesCout = -1;
}