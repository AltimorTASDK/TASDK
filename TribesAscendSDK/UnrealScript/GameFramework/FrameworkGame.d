module UnrealScript.GameFramework.FrameworkGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameInfo;

extern(C++) interface FrameworkGame : GameInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.FrameworkGame")()); }
	private static __gshared FrameworkGame mDefaultProperties;
	@property final static FrameworkGame DefaultProperties() { mixin(MGDPC!(FrameworkGame, "FrameworkGame GameFramework.Default__FrameworkGame")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTgStartGame;
			ScriptFunction mTgEndGame;
			ScriptFunction mTgTimer;
			ScriptFunction mTgChangeScore;
			ScriptFunction mTgChangeTime;
			ScriptFunction mTgGetSpectators;
		}
		public @property static final
		{
			ScriptFunction TgStartGame() { mixin(MGF!("mTgStartGame", "Function GameFramework.FrameworkGame.TgStartGame")()); }
			ScriptFunction TgEndGame() { mixin(MGF!("mTgEndGame", "Function GameFramework.FrameworkGame.TgEndGame")()); }
			ScriptFunction TgTimer() { mixin(MGF!("mTgTimer", "Function GameFramework.FrameworkGame.TgTimer")()); }
			ScriptFunction TgChangeScore() { mixin(MGF!("mTgChangeScore", "Function GameFramework.FrameworkGame.TgChangeScore")()); }
			ScriptFunction TgChangeTime() { mixin(MGF!("mTgChangeTime", "Function GameFramework.FrameworkGame.TgChangeTime")()); }
			ScriptFunction TgGetSpectators() { mixin(MGF!("mTgGetSpectators", "Function GameFramework.FrameworkGame.TgGetSpectators")()); }
		}
	}
	struct RequiredMobileInputConfig
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.FrameworkGame.RequiredMobileInputConfig")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptString) RequireZoneNames() { mixin(MGPS!("ScriptArray!(ScriptString)", 12)()); }
				ScriptString GroupName() { mixin(MGPS!("ScriptString", 0)()); }
			}
			bool bIsAttractModeGroup() { mixin(MGBPS!(24, 0x1)()); }
			bool bIsAttractModeGroup(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(FrameworkGame.RequiredMobileInputConfig) RequiredMobileInputConfigs() { mixin(MGPC!("ScriptArray!(FrameworkGame.RequiredMobileInputConfig)", 884)()); }
final:
	void TgStartGame(ref ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgStartGame, params.ptr, cast(void*)0);
		Reason = *cast(ScriptString*)params.ptr;
	}
	void TgEndGame(ref ScriptString Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgEndGame, params.ptr, cast(void*)0);
		Reason = *cast(ScriptString*)params.ptr;
	}
	void TgTimer(ref ScriptString sTimerCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = sTimerCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgTimer, params.ptr, cast(void*)0);
		sTimerCommand = *cast(ScriptString*)params.ptr;
	}
	void TgChangeScore(int nTeam, int* nCount = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nTeam;
		if (nCount !is null)
			*cast(int*)&params[4] = *nCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgChangeScore, params.ptr, cast(void*)0);
	}
	void TgChangeTime(int nSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgChangeTime, params.ptr, cast(void*)0);
	}
	void TgGetSpectators(ref ScriptArray!(ScriptString) List)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgGetSpectators, params.ptr, cast(void*)0);
		List = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
