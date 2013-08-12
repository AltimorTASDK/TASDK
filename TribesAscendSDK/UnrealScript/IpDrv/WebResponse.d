module UnrealScript.IpDrv.WebResponse;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebConnection;

extern(C++) interface WebResponse : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.WebResponse")); }
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
			ScriptFunction Subst() { return mSubst ? mSubst : (mSubst = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.Subst")); }
			ScriptFunction IncludeUHTM() { return mIncludeUHTM ? mIncludeUHTM : (mIncludeUHTM = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.IncludeUHTM")); }
			ScriptFunction FileExists() { return mFileExists ? mFileExists : (mFileExists = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.FileExists")); }
			ScriptFunction IncludeBinaryFile() { return mIncludeBinaryFile ? mIncludeBinaryFile : (mIncludeBinaryFile = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.IncludeBinaryFile")); }
			ScriptFunction ClearSubst() { return mClearSubst ? mClearSubst : (mClearSubst = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.ClearSubst")); }
			ScriptFunction LoadParsedUHTM() { return mLoadParsedUHTM ? mLoadParsedUHTM : (mLoadParsedUHTM = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.LoadParsedUHTM")); }
			ScriptFunction GetHTTPExpiration() { return mGetHTTPExpiration ? mGetHTTPExpiration : (mGetHTTPExpiration = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.GetHTTPExpiration")); }
			ScriptFunction Dump() { return mDump ? mDump : (mDump = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.Dump")); }
			ScriptFunction SendText() { return mSendText ? mSendText : (mSendText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SendText")); }
			ScriptFunction SendBinary() { return mSendBinary ? mSendBinary : (mSendBinary = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SendBinary")); }
			ScriptFunction SendCachedFile() { return mSendCachedFile ? mSendCachedFile : (mSendCachedFile = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SendCachedFile")); }
			ScriptFunction FailAuthentication() { return mFailAuthentication ? mFailAuthentication : (mFailAuthentication = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.FailAuthentication")); }
			ScriptFunction HTTPResponse() { return mHTTPResponse ? mHTTPResponse : (mHTTPResponse = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.HTTPResponse")); }
			ScriptFunction HTTPHeader() { return mHTTPHeader ? mHTTPHeader : (mHTTPHeader = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.HTTPHeader")); }
			ScriptFunction AddHeader() { return mAddHeader ? mAddHeader : (mAddHeader = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.AddHeader")); }
			ScriptFunction SendHeaders() { return mSendHeaders ? mSendHeaders : (mSendHeaders = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SendHeaders")); }
			ScriptFunction HTTPError() { return mHTTPError ? mHTTPError : (mHTTPError = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.HTTPError")); }
			ScriptFunction SendStandardHeaders() { return mSendStandardHeaders ? mSendStandardHeaders : (mSendStandardHeaders = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SendStandardHeaders")); }
			ScriptFunction Redirect() { return mRedirect ? mRedirect : (mRedirect = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.Redirect")); }
			ScriptFunction SentText() { return mSentText ? mSentText : (mSentText = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SentText")); }
			ScriptFunction SentResponse() { return mSentResponse ? mSentResponse : (mSentResponse = ScriptObject.Find!(ScriptFunction)("Function IpDrv.WebResponse.SentResponse")); }
		}
	}
	@property final
	{
		auto ref
		{
			WebConnection Connection() { return *cast(WebConnection*)(cast(size_t)cast(void*)this + 156); }
			ScriptArray!(ScriptString) headers() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
			ScriptString CharSet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
			ScriptString IncludePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			UObject.Map_Mirror ReplacementMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bSentResponse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
		bool bSentResponse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
		bool bSentText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bSentText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
final:
	void Subst(ScriptString Variable, ScriptString Value, bool bClear)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Variable;
		*cast(ScriptString*)&params[12] = Value;
		*cast(bool*)&params[24] = bClear;
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
	ScriptString GetHTTPExpiration(int OffsetSeconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = OffsetSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHTTPExpiration, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Dump, cast(void*)0, cast(void*)0);
	}
	void SendText(ScriptString Text, bool bNoCRLF)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = bNoCRLF;
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
	bool SendCachedFile(ScriptString Filename, ScriptString ContentType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptString*)&params[12] = ContentType;
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
	void AddHeader(ScriptString Header, bool bReplace)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		*cast(bool*)&params[12] = bReplace;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddHeader, params.ptr, cast(void*)0);
	}
	void SendHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHeaders, cast(void*)0, cast(void*)0);
	}
	void HTTPError(int ErrorNum, ScriptString Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ErrorNum;
		*cast(ScriptString*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(Functions.HTTPError, params.ptr, cast(void*)0);
	}
	void SendStandardHeaders(ScriptString ContentType, bool bCache)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ContentType;
		*cast(bool*)&params[12] = bCache;
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
