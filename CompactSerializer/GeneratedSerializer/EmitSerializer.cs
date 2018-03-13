using System;
using System.IO;

public class EmitSerializer<TObject> : CompactSerializerBase<TObject>
    where TObject : class, new()
{
    public EmitSerializer(Action<Stream, TObject> writePropertiesDelegate, Action<Stream, TObject> readPropertiesDelegate)
    {
        _writePropertiesDelegate = writePropertiesDelegate;
        _readPropertiesDelegate = readPropertiesDelegate;
    }

    public override void WriteVersion(Stream stream, string version)
    {
        WriteString(stream, version);
    }

    public override string ReadObjectVersion(Stream stream)
    {
        return ReadString(stream);
    }

    public override void Serialize(TObject theObject, Stream stream)
    {
        _writePropertiesDelegate(stream, theObject);
    }

    public override TObject Deserialize(Stream stream)
    {
        var theObject = new TObject();

        _readPropertiesDelegate(stream, theObject);

        return theObject;
    }

    private readonly Action<Stream, TObject> _writePropertiesDelegate;

    private readonly Action<Stream, TObject> _readPropertiesDelegate;
}