module UnrealScript.IpDrv.WebRequest;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface WebRequest : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.WebRequest")()); }
	private static __gshared WebRequest mDefaultProperties;
	@property final static WebRequest DefaultProperties() { mixin(MGDPC!(WebRequest, "WebRequest IpDrv.Default__WebRequest")()); }
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
			ScriptFunction GetVariable() { mixin(MGF!("mGetVariable", "Function IpDrv.WebRequest.GetVariable")()); }
			ScriptFunction GetVariableCount() { mixin(MGF!("mGetVariableCount", "Function IpDrv.WebRequest.GetVariableCount")()); }
			ScriptFunction GetVariableNumber() { mixin(MGF!("mGetVariableNumber", "Function IpDrv.WebRequest.GetVariableNumber")()); }
			ScriptFunction DecodeBase64() { mixin(MGF!("mDecodeBase64", "Function IpDrv.WebRequest.DecodeBase64")()); }
			ScriptFunction EncodeBase64() { mixin(MGF!("mEncodeBase64", "Function IpDrv.WebRequest.EncodeBase64")()); }
			ScriptFunction AddHeader() { mixin(MGF!("mAddHeader", "Function IpDrv.WebRequest.AddHeader")()); }
			ScriptFunction GetHeader() { mixin(MGF!("mGetHeader", "Function IpDrv.WebRequest.GetHeader")()); }
			ScriptFunction GetHeaders() { mixin(MGF!("mGetHeaders", "Function IpDrv.WebRequest.GetHeaders")()); }
			ScriptFunction AddVariable() { mixin(MGF!("mAddVariable", "Function IpDrv.WebRequest.AddVariable")()); }
			ScriptFunction GetVariables() { mixin(MGF!("mGetVariables", "Function IpDrv.WebRequest.GetVariables")()); }
			ScriptFunction Dump() { mixin(MGF!("mDump", "Function IpDrv.WebRequest.Dump")()); }
			ScriptFunction ProcessHeaderString() { mixin(MGF!("mProcessHeaderString", "Function IpDrv.WebRequest.ProcessHeaderString")()); }
			ScriptFunction DecodeFormData() { mixin(MGF!("mDecodeFormData", "Function IpDrv.WebRequest.DecodeFormData")()); }
			ScriptFunction GetHexDigit() { mixin(MGF!("mGetHexDigit", "Function IpDrv.WebRequest.GetHexDigit")()); }
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
		ScriptString UserName() { mixin(MGPC!("ScriptString", 84)()); }
		ScriptString Password() { mixin(MGPC!("ScriptString", 96)()); }
		ScriptString URI() { mixin(MGPC!("ScriptString", 72)()); }
		WebRequest.ERequestType RequestType() { mixin(MGPC!("WebRequest.ERequestType", 124)()); }
		ScriptString RemoteAddr() { mixin(MGPC!("ScriptString", 60)()); }
		int ContentLength() { mixin(MGPC!("int", 108)()); }
		ScriptString ContentType() { mixin(MGPC!("ScriptString", 112)()); }
		UObject.Map_Mirror VariableMap() { mixin(MGPC!("UObject.Map_Mirror", 188)()); }
		UObject.Map_Mirror HeaderMap() { mixin(MGPC!("UObject.Map_Mirror", 128)()); }
	}
final:
	ScriptString GetVariable(ScriptString VariableName, ScriptString* DefaultValue = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		if (DefaultValue !is null)
			*cast(ScriptString*)&params[12] = *DefaultValue;
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
	ScriptString GetVariableNumber(ScriptString VariableName, int Number, ScriptString* DefaultValue = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(int*)&params[12] = Number;
		if (DefaultValue !is null)
			*cast(ScriptString*)&params[16] = *DefaultValue;
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
	ScriptString GetHeader(ScriptString HeaderName, ScriptString* DefaultValue = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = HeaderName;
		if (DefaultValue !is null)
			*cast(ScriptString*)&params[12] = *DefaultValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHeader, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void GetHeaders(ref ScriptArray!(ScriptString) headers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = headers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHeaders, params.ptr, cast(void*)0);
		headers = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
	void AddVariable(ScriptString VariableName, ScriptString Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = VariableName;
		*cast(ScriptString*)&params[12] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVariable, params.ptr, cast(void*)0);
	}
	void GetVariables(ref ScriptArray!(ScriptString) varNames)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = varNames;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVariables, params.ptr, cast(void*)0);
		varNames = *cast(ScriptArray!(ScriptString)*)params.ptr;
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
