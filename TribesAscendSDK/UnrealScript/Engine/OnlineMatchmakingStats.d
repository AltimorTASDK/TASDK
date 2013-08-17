module UnrealScript.Engine.OnlineMatchmakingStats;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineMatchmakingStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineMatchmakingStats")()); }
	private static __gshared OnlineMatchmakingStats mDefaultProperties;
	@property final static OnlineMatchmakingStats DefaultProperties() { mixin(MGDPC!(OnlineMatchmakingStats, "OnlineMatchmakingStats Engine.Default__OnlineMatchmakingStats")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStartTimer;
			ScriptFunction mStopTimer;
		}
		public @property static final
		{
			ScriptFunction StartTimer() { mixin(MGF!("mStartTimer", "Function Engine.OnlineMatchmakingStats.StartTimer")()); }
			ScriptFunction StopTimer() { mixin(MGF!("mStopTimer", "Function Engine.OnlineMatchmakingStats.StopTimer")()); }
		}
	}
	struct MMStats_Timer
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.OnlineMatchmakingStats.MMStats_Timer")()); }
		@property final
		{
			@property final auto ref UObject.Double MSecs() { mixin(MGPS!("UObject.Double", 4)()); }
			bool bInProgress() { mixin(MGBPS!(0, 0x1)()); }
			bool bInProgress(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
final:
	void StartTimer(ref OnlineMatchmakingStats.MMStats_Timer Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = Timer;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTimer, params.ptr, cast(void*)0);
		Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
	void StopTimer(ref OnlineMatchmakingStats.MMStats_Timer Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = Timer;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopTimer, params.ptr, cast(void*)0);
		Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
}
