module UnrealScript.GameFramework.FrameworkGame;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;

extern(C++) interface FrameworkGame : GameInfo
{
	struct RequiredMobileInputConfig
	{
		public @property final auto ref ScriptArray!(ScriptString) RequireZoneNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 12); }
		private ubyte __RequireZoneNames[12];
		public @property final bool bIsAttractModeGroup() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bIsAttractModeGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bIsAttractModeGroup[4];
		public @property final auto ref ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __GroupName[12];
	}
	public @property final auto ref ScriptArray!(FrameworkGame.RequiredMobileInputConfig) RequiredMobileInputConfigs() { return *cast(ScriptArray!(FrameworkGame.RequiredMobileInputConfig)*)(cast(size_t)cast(void*)this + 884); }
	final void TgStartGame(ScriptString* Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30549], params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)params.ptr;
	}
	final void TgEndGame(ScriptString* Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30551], params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)params.ptr;
	}
	final void TgTimer(ScriptString* sTimerCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *sTimerCommand;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30553], params.ptr, cast(void*)0);
		*sTimerCommand = *cast(ScriptString*)params.ptr;
	}
	final void TgChangeScore(int nTeam, int nCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nTeam;
		*cast(int*)&params[4] = nCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30555], params.ptr, cast(void*)0);
	}
	final void TgChangeTime(int nSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30558], params.ptr, cast(void*)0);
	}
	final void TgGetSpectators(ScriptArray!(ScriptString)* List)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30560], params.ptr, cast(void*)0);
		*List = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
