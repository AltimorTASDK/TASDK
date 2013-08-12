module UnrealScript.IpDrv.WebRequest;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface WebRequest : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.WebRequest")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetVariable;
			ScriptFunction mGetVariableCount;
			ScriptFunction mGetVariableNumber;
			ScriptFunction mDecodeBase64;
			ScriptFunction mEncodeBase64;
			ScriptFunction mAddHeader;
			ScriptFunction mGetHeader;
			ScriptFunction mGetHeaders;
			ScriptFunction mAddVariable;
			ScriptFunction mGetVariables;
			ScriptFunction mDump;
			ScriptFunction mProcessHeaderString;
			ScriptFunction mDecodeFormData;
			ScriptFunction mGetHexDigit;
		}
		public @property static final
		{
			ScriptFunction GetVariable() { return mGetVariable ? mGetVariable : (mGetVariable = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetVariable")); }
			ScriptFunction GetVariableCount() { return mGetVariableCount ? mGetVariableCount : (mGetVariableCount = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetVariableCount")); }
			ScriptFunction GetVariableNumber() { return mGetVariableNumber ? mGetVariableNumber : (mGetVariableNumber = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetVariableNumber")); }
			ScriptFunction DecodeBase64() { return mDecodeBase64 ? mDecodeBase64 : (mDecodeBase64 = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.DecodeBase64")); }
			ScriptFunction EncodeBase64() { return mEncodeBase64 ? mEncodeBase64 : (mEncodeBase64 = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.EncodeBase64")); }
			ScriptFunction AddHeader() { return mAddHeader ? mAddHeader : (mAddHeader = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.AddHeader")); }
			ScriptFunction GetHeader() { return mGetHeader ? mGetHeader : (mGetHeader = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetHeader")); }
			ScriptFunction GetHeaders() { return mGetHeaders ? mGetHeaders : (mGetHeaders = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetHeaders")); }
			ScriptFunction AddVariable() { return mAddVariable ? mAddVariable : (mAddVariable = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.AddVariable")); }
			ScriptFunction GetVariables() { return mGetVariables ? mGetVariables : (mGetVariables = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetVariables")); }
			ScriptFunction Dump() { return mDump ? mDump : (mDump = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.Dump")); }
			ScriptFunction ProcessHeaderString() { return mProcessHeaderString ? mProcessHeaderString : (mProcessHeaderString = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.ProcessHeaderString")); }
			ScriptFunction DecodeFormData() { return mDecodeFormData ? mDecodeFormData : (mDecodeFormData = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.DecodeFormData")); }
			ScriptFunction GetHexDigit() { return mGetHexDigit ? mGetHexDigit : (mGetHexDigit = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebRequest.GetHexDigit")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariable, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	int GetVariableCount(ScriptString VariableName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	ScriptString GetVariableNumber(ScriptString VariableName, int Number, ScriptString DefaultValue)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(int*)&params[12] = Number;
		*cast(ScriptString*)&params[16] = DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariableNumber, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[28];
	}
	ScriptString DecodeBase64(ScriptString Encoded)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Encoded;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecodeBase64, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString EncodeBase64(ScriptString Decoded)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Decoded;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncodeBase64, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void AddHeader(ScriptString HeaderName, ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = HeaderName;
		*cast(ScriptString*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddHeader, params.ptr, cast(void*)0);
	}
	ScriptString GetHeader(ScriptString HeaderName, ScriptString DefaultValue)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = HeaderName;
		*cast(ScriptString*)&params[12] = DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHeader, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void GetHeaders(ScriptArray!(ScriptString)* headers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *headers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHeaders, params.ptr, cast(void*)0);
		*headers = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void AddVariable(ScriptString VariableName, ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(ScriptString*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVariable, params.ptr, cast(void*)0);
	}
	void GetVariables(ScriptArray!(ScriptString)* varNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *varNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariables, params.ptr, cast(void*)0);
		*varNames = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Dump, cast(void*)0, cast(void*)0);
	}
	void ProcessHeaderString(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessHeaderString, params.ptr, cast(void*)0);
	}
	void DecodeFormData(ScriptString Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecodeFormData, params.ptr, cast(void*)0);
	}
	int GetHexDigit(ScriptString D)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = D;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHexDigit, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
}
