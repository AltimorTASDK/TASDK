module UnrealScript.PlatformCommon.TgSupportCommands;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TgSupportCommands : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgSupportCommands")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mgmMatchForce;
			ScriptFunction mgmMatchNext;
			ScriptFunction mgmCommand;
			ScriptFunction mgmC;
			ScriptFunction mGPerfDebugFeet;
			ScriptFunction mGPerfDebugSkips;
			ScriptFunction mGPerfDebugRelevMode;
			ScriptFunction mscLog;
			ScriptFunction mscLogMark;
			ScriptFunction mscStartGame;
			ScriptFunction mscEndGame;
			ScriptFunction mscScore;
			ScriptFunction mscTime;
			ScriptFunction mscTimer;
			ScriptFunction mscDemoRec;
			ScriptFunction mscDemoStop;
			ScriptFunction mscPerfDebugFeet;
			ScriptFunction mscPerfDebugSkip;
			ScriptFunction mscPerfDebugRelevMode;
		}
		public @property static final
		{
			ScriptFunction gmMatchForce() { return mgmMatchForce ? mgmMatchForce : (mgmMatchForce = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.gmMatchForce")); }
			ScriptFunction gmMatchNext() { return mgmMatchNext ? mgmMatchNext : (mgmMatchNext = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.gmMatchNext")); }
			ScriptFunction gmCommand() { return mgmCommand ? mgmCommand : (mgmCommand = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.gmCommand")); }
			ScriptFunction gmC() { return mgmC ? mgmC : (mgmC = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.gmC")); }
			ScriptFunction GPerfDebugFeet() { return mGPerfDebugFeet ? mGPerfDebugFeet : (mGPerfDebugFeet = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.GPerfDebugFeet")); }
			ScriptFunction GPerfDebugSkips() { return mGPerfDebugSkips ? mGPerfDebugSkips : (mGPerfDebugSkips = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.GPerfDebugSkips")); }
			ScriptFunction GPerfDebugRelevMode() { return mGPerfDebugRelevMode ? mGPerfDebugRelevMode : (mGPerfDebugRelevMode = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.GPerfDebugRelevMode")); }
			ScriptFunction scLog() { return mscLog ? mscLog : (mscLog = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scLog")); }
			ScriptFunction scLogMark() { return mscLogMark ? mscLogMark : (mscLogMark = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scLogMark")); }
			ScriptFunction scStartGame() { return mscStartGame ? mscStartGame : (mscStartGame = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scStartGame")); }
			ScriptFunction scEndGame() { return mscEndGame ? mscEndGame : (mscEndGame = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scEndGame")); }
			ScriptFunction scScore() { return mscScore ? mscScore : (mscScore = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scScore")); }
			ScriptFunction scTime() { return mscTime ? mscTime : (mscTime = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scTime")); }
			ScriptFunction scTimer() { return mscTimer ? mscTimer : (mscTimer = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scTimer")); }
			ScriptFunction scDemoRec() { return mscDemoRec ? mscDemoRec : (mscDemoRec = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scDemoRec")); }
			ScriptFunction scDemoStop() { return mscDemoStop ? mscDemoStop : (mscDemoStop = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scDemoStop")); }
			ScriptFunction scPerfDebugFeet() { return mscPerfDebugFeet ? mscPerfDebugFeet : (mscPerfDebugFeet = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scPerfDebugFeet")); }
			ScriptFunction scPerfDebugSkip() { return mscPerfDebugSkip ? mscPerfDebugSkip : (mscPerfDebugSkip = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scPerfDebugSkip")); }
			ScriptFunction scPerfDebugRelevMode() { return mscPerfDebugRelevMode ? mscPerfDebugRelevMode : (mscPerfDebugRelevMode = ScriptObject.Find!(ScriptFunction)("Function PlatformCommon.TgSupportCommands.scPerfDebugRelevMode")); }
		}
	}
	enum
	{
		GC_OS_TYPE_BELOW_XP = 10300,
		GC_OS_TYPE_XP = 10301,
		GC_OS_TYPE_VISTA = 10303,
		GC_OS_TYPE_WIN7 = 10305,
		GC_OS_TYPE_WIN8 = 10307,
	}
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
	@property final auto ref
	{
		// WARNING: Property 'WorldInfo' has the same name as a defined type!
		PlayerController PC() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void gmMatchForce(int nQueueId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nQueueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.gmMatchForce, params.ptr, cast(void*)0);
	}
	void gmMatchNext(int nMapId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nMapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.gmMatchNext, params.ptr, cast(void*)0);
	}
	void gmCommand(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.gmCommand, params.ptr, cast(void*)0);
	}
	void gmC(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.gmC, params.ptr, cast(void*)0);
	}
	void GPerfDebugFeet(int feet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = feet;
		(cast(ScriptObject)this).ProcessEvent(Functions.GPerfDebugFeet, params.ptr, cast(void*)0);
	}
	void GPerfDebugSkips(int skips)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = skips;
		(cast(ScriptObject)this).ProcessEvent(Functions.GPerfDebugSkips, params.ptr, cast(void*)0);
	}
	void GPerfDebugRelevMode(int Mode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.GPerfDebugRelevMode, params.ptr, cast(void*)0);
	}
	void scLog(ScriptString LogName, bool bEnabled)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogName;
		*cast(bool*)&params[12] = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.scLog, params.ptr, cast(void*)0);
	}
	void scLogMark(ScriptString Comment)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Comment;
		(cast(ScriptObject)this).ProcessEvent(Functions.scLogMark, params.ptr, cast(void*)0);
	}
	void scStartGame(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.scStartGame, params.ptr, cast(void*)0);
	}
	void scEndGame(ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.scEndGame, params.ptr, cast(void*)0);
	}
	void scScore(int nTeam, int nCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nTeam;
		*cast(int*)&params[4] = nCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.scScore, params.ptr, cast(void*)0);
	}
	void scTime(int nSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.scTime, params.ptr, cast(void*)0);
	}
	void scTimer(ScriptString sCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.scTimer, params.ptr, cast(void*)0);
	}
	void scDemoRec()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.scDemoRec, cast(void*)0, cast(void*)0);
	}
	void scDemoStop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.scDemoStop, cast(void*)0, cast(void*)0);
	}
	void scPerfDebugFeet(int feet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = feet;
		(cast(ScriptObject)this).ProcessEvent(Functions.scPerfDebugFeet, params.ptr, cast(void*)0);
	}
	void scPerfDebugSkip(int skips)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = skips;
		(cast(ScriptObject)this).ProcessEvent(Functions.scPerfDebugSkip, params.ptr, cast(void*)0);
	}
	void scPerfDebugRelevMode(int Mode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.scPerfDebugRelevMode, params.ptr, cast(void*)0);
	}
}
