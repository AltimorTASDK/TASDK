module UnrealScript.IpDrv.WebResponse;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebConnection;

extern(C++) interface WebResponse : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.WebResponse")); }
	private static __gshared WebResponse mDefaultProperties;
	@property final static WebResponse DefaultProperties() { mixin(MGDPC("WebResponse", "WebResponse IpDrv.Default__WebResponse")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSubst;
			ScriptFunction mIncludeUHTM;
			ScriptFunction mFileExists;
			ScriptFunction mIncludeBinaryFile;
			ScriptFunction mClearSubst;
			ScriptFunction mLoadParsedUHTM;
			ScriptFunction mGetHTTPExpiration;
			ScriptFunction mDump;
			ScriptFunction mSendText;
			ScriptFunction mSendBinary;
			ScriptFunction mSendCachedFile;
			ScriptFunction mFailAuthentication;
			ScriptFunction mHTTPResponse;
			ScriptFunction mHTTPHeader;
			ScriptFunction mAddHeader;
			ScriptFunction mSendHeaders;
			ScriptFunction mHTTPError;
			ScriptFunction mSendStandardHeaders;
			ScriptFunction mRedirect;
			ScriptFunction mSentText;
			ScriptFunction mSentResponse;
		}
		public @property static final
		{
			ScriptFunction Subst() { mixin(MGF("mSubst", "Function IpDrv.WebResponse.Subst")); }
			ScriptFunction IncludeUHTM() { mixin(MGF("mIncludeUHTM", "Function IpDrv.WebResponse.IncludeUHTM")); }
			ScriptFunction FileExists() { mixin(MGF("mFileExists", "Function IpDrv.WebResponse.FileExists")); }
			ScriptFunction IncludeBinaryFile() { mixin(MGF("mIncludeBinaryFile", "Function IpDrv.WebResponse.IncludeBinaryFile")); }
			ScriptFunction ClearSubst() { mixin(MGF("mClearSubst", "Function IpDrv.WebResponse.ClearSubst")); }
			ScriptFunction LoadParsedUHTM() { mixin(MGF("mLoadParsedUHTM", "Function IpDrv.WebResponse.LoadParsedUHTM")); }
			ScriptFunction GetHTTPExpiration() { mixin(MGF("mGetHTTPExpiration", "Function IpDrv.WebResponse.GetHTTPExpiration")); }
			ScriptFunction Dump() { mixin(MGF("mDump", "Function IpDrv.WebResponse.Dump")); }
			ScriptFunction SendText() { mixin(MGF("mSendText", "Function IpDrv.WebResponse.SendText")); }
			ScriptFunction SendBinary() { mixin(MGF("mSendBinary", "Function IpDrv.WebResponse.SendBinary")); }
			ScriptFunction SendCachedFile() { mixin(MGF("mSendCachedFile", "Function IpDrv.WebResponse.SendCachedFile")); }
			ScriptFunction FailAuthentication() { mixin(MGF("mFailAuthentication", "Function IpDrv.WebResponse.FailAuthentication")); }
			ScriptFunction HTTPResponse() { mixin(MGF("mHTTPResponse", "Function IpDrv.WebResponse.HTTPResponse")); }
			ScriptFunction HTTPHeader() { mixin(MGF("mHTTPHeader", "Function IpDrv.WebResponse.HTTPHeader")); }
			ScriptFunction AddHeader() { mixin(MGF("mAddHeader", "Function IpDrv.WebResponse.AddHeader")); }
			ScriptFunction SendHeaders() { mixin(MGF("mSendHeaders", "Function IpDrv.WebResponse.SendHeaders")); }
			ScriptFunction HTTPError() { mixin(MGF("mHTTPError", "Function IpDrv.WebResponse.HTTPError")); }
			ScriptFunction SendStandardHeaders() { mixin(MGF("mSendStandardHeaders", "Function IpDrv.WebResponse.SendStandardHeaders")); }
			ScriptFunction Redirect() { mixin(MGF("mRedirect", "Function IpDrv.WebResponse.Redirect")); }
			ScriptFunction SentText() { mixin(MGF("mSentText", "Function IpDrv.WebResponse.SentText")); }
			ScriptFunction SentResponse() { mixin(MGF("mSentResponse", "Function IpDrv.WebResponse.SentResponse")); }
		}
	}
	@property final
	{
		auto ref
		{
			WebConnection Connection() { mixin(MGPC("WebConnection", 156)); }
			ScriptArray!(ScriptString) headers() { mixin(MGPC("ScriptArray!(ScriptString)", 60)); }
			ScriptString CharSet() { mixin(MGPC("ScriptString", 144)); }
			ScriptString IncludePath() { mixin(MGPC("ScriptString", 132)); }
			UObject.Map_Mirror ReplacementMap() { mixin(MGPC("UObject.Map_Mirror", 72)); }
		}
		bool bSentResponse() { mixin(MGBPC(160, 0x2)); }
		bool bSentResponse(bool val) { mixin(MSBPC(160, 0x2)); }
		bool bSentText() { mixin(MGBPC(160, 0x1)); }
		bool bSentText(bool val) { mixin(MSBPC(160, 0x1)); }
	}
final:
	void Subst(ScriptString Variable, ScriptString Value, bool* bClear = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Variable;
		*cast(ScriptString*)&params[12] = Value;
		if (bClear !is null)
			*cast(bool*)&params[24] = *bClear;
		(cast(ScriptObject)this).ProcessEvent(Functions.Subst, params.ptr, cast(void*)0);
	}
	bool IncludeUHTM(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncludeUHTM, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool FileExists(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.FileExists, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IncludeBinaryFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncludeBinaryFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ClearSubst()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSubst, cast(void*)0, cast(void*)0);
	}
	ScriptString LoadParsedUHTM(ScriptString Filename)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadParsedUHTM, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString GetHTTPExpiration(int* OffsetSeconds = null)
	{
		ubyte params[16];
		params[] = 0;
		if (OffsetSeconds !is null)
			*cast(int*)params.ptr = *OffsetSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHTTPExpiration, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Dump, cast(void*)0, cast(void*)0);
	}
	void SendText(ScriptString Text, bool* bNoCRLF = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		if (bNoCRLF !is null)
			*cast(bool*)&params[12] = *bNoCRLF;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendText, params.ptr, cast(void*)0);
	}
	void SendBinary(int Count, ubyte B)
	{
		ubyte params[259];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendBinary, params.ptr, cast(void*)0);
	}
	bool SendCachedFile(ScriptString Filename, ScriptString* ContentType = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		if (ContentType !is null)
			*cast(ScriptString*)&params[12] = *ContentType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendCachedFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void FailAuthentication(ScriptString Realm)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Realm;
		(cast(ScriptObject)this).ProcessEvent(Functions.FailAuthentication, params.ptr, cast(void*)0);
	}
	void HTTPResponse(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(Functions.HTTPResponse, params.ptr, cast(void*)0);
	}
	void HTTPHeader(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(Functions.HTTPHeader, params.ptr, cast(void*)0);
	}
	void AddHeader(ScriptString Header, bool* bReplace = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		if (bReplace !is null)
			*cast(bool*)&params[12] = *bReplace;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddHeader, params.ptr, cast(void*)0);
	}
	void SendHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHeaders, cast(void*)0, cast(void*)0);
	}
	void HTTPError(int ErrorNum, ScriptString* Data = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ErrorNum;
		if (Data !is null)
			*cast(ScriptString*)&params[4] = *Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.HTTPError, params.ptr, cast(void*)0);
	}
	void SendStandardHeaders(ScriptString* ContentType = null, bool* bCache = null)
	{
		ubyte params[16];
		params[] = 0;
		if (ContentType !is null)
			*cast(ScriptString*)params.ptr = *ContentType;
		if (bCache !is null)
			*cast(bool*)&params[12] = *bCache;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendStandardHeaders, params.ptr, cast(void*)0);
	}
	void Redirect(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.Redirect, params.ptr, cast(void*)0);
	}
	bool SentText()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SentText, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SentResponse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SentResponse, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
