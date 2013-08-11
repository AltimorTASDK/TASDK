module UnrealScript.IpDrv.WebResponse;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.WebConnection;

extern(C++) interface WebResponse : UObject
{
	public @property final auto ref WebConnection Connection() { return *cast(WebConnection*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(ScriptString) headers() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 60); }
	public @property final bool bSentResponse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
	public @property final bool bSentResponse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
	public @property final bool bSentText() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bSentText(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref ScriptString CharSet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString IncludePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref UObject.Map_Mirror ReplacementMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 72); }
	final void Subst(ScriptString Variable, ScriptString Value, bool bClear)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Variable;
		*cast(ScriptString*)&params[12] = Value;
		*cast(bool*)&params[24] = bClear;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33108], params.ptr, cast(void*)0);
	}
	final bool IncludeUHTM(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33109], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool FileExists(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33117], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool IncludeBinaryFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33119], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void ClearSubst()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34195], cast(void*)0, cast(void*)0);
	}
	final ScriptString LoadParsedUHTM(ScriptString Filename)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34198], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString GetHTTPExpiration(int OffsetSeconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = OffsetSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34201], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void Dump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34204], cast(void*)0, cast(void*)0);
	}
	final void SendText(ScriptString Text, bool bNoCRLF)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(bool*)&params[12] = bNoCRLF;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34205], params.ptr, cast(void*)0);
	}
	final void SendBinary(int Count, ubyte B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34208], params.ptr, cast(void*)0);
	}
	final bool SendCachedFile(ScriptString Filename, ScriptString ContentType)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptString*)&params[12] = ContentType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34211], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final void FailAuthentication(ScriptString Realm)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Realm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34215], params.ptr, cast(void*)0);
	}
	final void HTTPResponse(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34217], params.ptr, cast(void*)0);
	}
	final void HTTPHeader(ScriptString Header)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34219], params.ptr, cast(void*)0);
	}
	final void AddHeader(ScriptString Header, bool bReplace)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Header;
		*cast(bool*)&params[12] = bReplace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34221], params.ptr, cast(void*)0);
	}
	final void SendHeaders()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34228], cast(void*)0, cast(void*)0);
	}
	final void HTTPError(int ErrorNum, ScriptString Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ErrorNum;
		*cast(ScriptString*)&params[4] = Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34230], params.ptr, cast(void*)0);
	}
	final void SendStandardHeaders(ScriptString ContentType, bool bCache)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ContentType;
		*cast(bool*)&params[12] = bCache;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34233], params.ptr, cast(void*)0);
	}
	final void Redirect(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34237], params.ptr, cast(void*)0);
	}
	final bool SentText()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34239], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool SentResponse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34241], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
