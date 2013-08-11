module UnrealScript.IpDrv.WebRequest;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface WebRequest : UObject
{
public extern(D):
	enum ERequestType : ubyte
	{
		Request_GET = 0,
		Request_POST = 1,
		Request_MAX = 2,
	}
	@property final auto ref
	{
		ScriptString UserName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
		ScriptString Password() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString URI() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		WebRequest.ERequestType RequestType() { return *cast(WebRequest.ERequestType*)(cast(size_t)cast(void*)this + 124); }
		ScriptString RemoteAddr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		int ContentLength() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		ScriptString ContentType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		UObject.Map_Mirror VariableMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 188); }
		UObject.Map_Mirror HeaderMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 128); }
	}
final:
	ScriptString GetVariable(ScriptString VariableName, ScriptString DefaultValue)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(ScriptString*)&params[12] = DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33102], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	int GetVariableCount(ScriptString VariableName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33104], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	ScriptString GetVariableNumber(ScriptString VariableName, int Number, ScriptString DefaultValue)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(int*)&params[12] = Number;
		*cast(ScriptString*)&params[16] = DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33106], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[28];
	}
	ScriptString DecodeBase64(ScriptString Encoded)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Encoded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34140], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString EncodeBase64(ScriptString Decoded)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Decoded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34143], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void AddHeader(ScriptString HeaderName, ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = HeaderName;
		*cast(ScriptString*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34146], params.ptr, cast(void*)0);
	}
	ScriptString GetHeader(ScriptString HeaderName, ScriptString DefaultValue)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = HeaderName;
		*cast(ScriptString*)&params[12] = DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34149], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void GetHeaders(ScriptArray!(ScriptString)* headers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *headers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34153], params.ptr, cast(void*)0);
		*headers = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void AddVariable(ScriptString VariableName, ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(ScriptString*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34156], params.ptr, cast(void*)0);
	}
	void GetVariables(ScriptArray!(ScriptString)* varNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *varNames;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34165], params.ptr, cast(void*)0);
		*varNames = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34168], cast(void*)0, cast(void*)0);
	}
	void ProcessHeaderString(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34169], params.ptr, cast(void*)0);
	}
	void DecodeFormData(ScriptString Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34172], params.ptr, cast(void*)0);
	}
	int GetHexDigit(ScriptString D)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34181], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
