module UnrealScript.Engine.OnlineMatchmakingStats;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineMatchmakingStats : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineMatchmakingStats")); }
	private static __gshared OnlineMatchmakingStats mDefaultProperties;
	@property final static OnlineMatchmakingStats DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineMatchmakingStats)("OnlineMatchmakingStats Engine.Default__OnlineMatchmakingStats")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStartTimer;
			ScriptFunction mStopTimer;
		}
		public @property static final
		{
			ScriptFunction StartTimer() { return mStartTimer ? mStartTimer : (mStartTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineMatchmakingStats.StartTimer")); }
			ScriptFunction StopTimer() { return mStopTimer ? mStopTimer : (mStopTimer = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineMatchmakingStats.StopTimer")); }
		}
	}
	struct MMStats_Timer
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineMatchmakingStats.MMStats_Timer")); }
		@property final
		{
			@property final auto ref UObject.Double MSecs() { return *cast(UObject.Double*)(cast(size_t)&this + 4); }
			bool bInProgress() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
final:
	void StartTimer(OnlineMatchmakingStats.MMStats_Timer* Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = *Timer;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTimer, params.ptr, cast(void*)0);
		*Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
	void StopTimer(OnlineMatchmakingStats.MMStats_Timer* Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = *Timer;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopTimer, params.ptr, cast(void*)0);
		*Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
}
