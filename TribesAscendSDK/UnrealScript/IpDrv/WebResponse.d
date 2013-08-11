module UnrealScript.IpDrv.WebResponse;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebConnection;

extern(C++) interface WebResponse : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33108], params.ptr, cast(void*)0);
	}
	bool IncludeUHTM(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33109], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool FileExists(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33117], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IncludeBinaryFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33119], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void ClearSubst()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34195], cast(void*)0, cast(void*)0);
	}
	ScriptString LoadParsedUHTM(ScriptString Filename)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34198], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString GetHTTPExpiration(int OffsetSeconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = OffsetSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34201], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34204], cast(void*)0, cast(void*)0);
	}
	void SendText(ScriptString Text, bool bNoCRLF)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = bNoCRLF;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34205], params.ptr, cast(void*)0);
	}
	void SendBinary(int Count, ubyte B)
	{
		ubyte params[259];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34208], params.ptr, cast(void*)0);
	}
	bool SendCachedFile(ScriptString Filename, ScriptString ContentType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptString*)&params[12] = ContentType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34211], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void FailAuthentication(ScriptString Realm)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Realm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34215], params.ptr, cast(void*)0);
	}
	void HTTPResponse(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34217], params.ptr, cast(void*)0);
	}
	void HTTPHeader(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34219], params.ptr, cast(void*)0);
	}
	void AddHeader(ScriptString Header, bool bReplace)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		*cast(bool*)&params[12] = bReplace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34221], params.ptr, cast(void*)0);
	}
	void SendHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34228], cast(void*)0, cast(void*)0);
	}
	void HTTPError(int ErrorNum, ScriptString Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ErrorNum;
		*cast(ScriptString*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34230], params.ptr, cast(void*)0);
	}
	void SendStandardHeaders(ScriptString ContentType, bool bCache)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ContentType;
		*cast(bool*)&params[12] = bCache;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34233], params.ptr, cast(void*)0);
	}
	void Redirect(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34237], params.ptr, cast(void*)0);
	}
	bool SentText()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34239], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SentResponse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34241], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
