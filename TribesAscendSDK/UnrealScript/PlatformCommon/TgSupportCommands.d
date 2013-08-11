module UnrealScript.PlatformCommon.TgSupportCommands;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TgSupportCommands : UObject
{
	public static immutable auto GC_OS_TYPE_BELOW_XP = 10300;
	public static immutable auto GC_OS_TYPE_XP = 10301;
	public static immutable auto GC_OS_TYPE_VISTA = 10303;
	public static immutable auto GC_OS_TYPE_WIN7 = 10305;
	public static immutable auto GC_OS_TYPE_WIN8 = 10307;
	enum GC_ALERT_PRIORITY : ubyte
	{
		GC_APT_MINIMAL = 0,
		GC_APT_NORMAL = 1,
		GC_APT_HIGH = 2,
		GC_APT_CRITICAL = 3,
		GC_APT_MAX = 4,
	}
	enum GC_CHAT_CHANNEL : ubyte
	{
		GC_CC_GLOBAL = 0,
		GC_CC_CLAN = 1,
		GC_CC_INSTANCE = 2,
		GC_CC_LOCAL_TEAM = 3,
		GC_CC_PARTY = 4,
		GC_CC_CITY = 5,
		GC_CC_PERSONAL = 6,
		GC_CC_PRIVATE_1 = 7,
		GC_CC_EOM_LOBBY = 8,
		GC_CC_SYSTEM = 9,
		GC_CC_TRADE = 10,
		GC_CC_LFG = 11,
		GC_CC_HELP = 12,
		GC_CC_VOIP_NEWS = 13,
		GC_CC_COUNT = 14,
		GC_CC_VOIP_ECHO = 15,
		GC_CC_VOIP_CONF = 16,
		GC_CC_COMBAT = 17,
		GC_CC_EMOTE = 18,
		GC_CC_INVALID = 19,
		GC_CC_LAST = 20,
		GC_CC_MAX = 21,
	}
	enum GC_STEAM_TXN_TYPES : ubyte
	{
		GC_STT_INVALID = 0,
		GC_STT_GETUSERINFO = 1,
		GC_STT_INIT = 2,
		GC_STT_FINALIZE = 3,
		GC_STT_DECLINE = 4,
		GC_STT_MAX = 5,
	}
	// WARNING: Property 'WorldInfo' has the same name as a defined type!
	public @property final auto ref PlayerController PC() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 60); }
	final void gmMatchForce(int nQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34397], params.ptr, cast(void*)0);
	}
	final void gmMatchNext(int nMapId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nMapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34399], params.ptr, cast(void*)0);
	}
	final void gmCommand(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34401], params.ptr, cast(void*)0);
	}
	final void gmC(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34403], params.ptr, cast(void*)0);
	}
	final void GPerfDebugFeet(int feet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = feet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34405], params.ptr, cast(void*)0);
	}
	final void GPerfDebugSkips(int skips)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = skips;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34407], params.ptr, cast(void*)0);
	}
	final void GPerfDebugRelevMode(int Mode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34409], params.ptr, cast(void*)0);
	}
	final void scLog(ScriptString LogName, bool bEnabled)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogName;
		*cast(bool*)&params[12] = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34411], params.ptr, cast(void*)0);
	}
	final void scLogMark(ScriptString Comment)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Comment;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34415], params.ptr, cast(void*)0);
	}
	final void scStartGame(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34417], params.ptr, cast(void*)0);
	}
	final void scEndGame(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34420], params.ptr, cast(void*)0);
	}
	final void scScore(int nTeam, int nCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nTeam;
		*cast(int*)&params[4] = nCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34423], params.ptr, cast(void*)0);
	}
	final void scTime(int nSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34427], params.ptr, cast(void*)0);
	}
	final void scTimer(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34430], params.ptr, cast(void*)0);
	}
	final void scDemoRec()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34433], cast(void*)0, cast(void*)0);
	}
	final void scDemoStop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34434], cast(void*)0, cast(void*)0);
	}
	final void scPerfDebugFeet(int feet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = feet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34435], params.ptr, cast(void*)0);
	}
	final void scPerfDebugSkip(int skips)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = skips;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34437], params.ptr, cast(void*)0);
	}
	final void scPerfDebugRelevMode(int Mode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34439], params.ptr, cast(void*)0);
	}
}
