module UnrealScript.Engine.OnlineMatchmakingStats;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface OnlineMatchmakingStats : UObject
{
	struct MMStats_Timer
	{
		public @property final auto ref UObject.Double MSecs() { return *cast(UObject.Double*)(cast(size_t)&this + 4); }
		private ubyte __MSecs[8];
		public @property final bool bInProgress() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bInProgress[4];
	}
	final void StartTimer(OnlineMatchmakingStats.MMStats_Timer* Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = *Timer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21861], params.ptr, cast(void*)0);
		*Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
	final void StopTimer(OnlineMatchmakingStats.MMStats_Timer* Timer)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr = *Timer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21863], params.ptr, cast(void*)0);
		*Timer = *cast(OnlineMatchmakingStats.MMStats_Timer*)params.ptr;
	}
}
