module UnrealScript.TribesGame.TrHUDTeamCTFStats;

import ScriptClasses;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrHUDTeamCTFStats : UObject
{
	public @property final auto ref GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 116); }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref PlayerReplicationInfo FlagHolderPRI() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ubyte bEmptyFlagStatus() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 106); }
	public @property final auto ref UTGameReplicationInfo.EFlagState FlagState() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int GeneratorDowntime() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int GeneratorPower() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int FlagReturnTime() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96637], params.ptr, cast(void*)0);
	}
	final void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96640], cast(void*)0, cast(void*)0);
	}
	final void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96641], cast(void*)0, cast(void*)0);
	}
	final void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96642], cast(void*)0, cast(void*)0);
	}
	final void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96644], cast(void*)0, cast(void*)0);
	}
	final int GetTeamIndex(int I)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = I;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96645], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void UpdateFlagStatus(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96648], params.ptr, cast(void*)0);
	}
	final void UpdateGeneratorStatus(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96652], params.ptr, cast(void*)0);
	}
	final void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96656], params.ptr, cast(void*)0);
	}
	final void UpdateTime(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96660], params.ptr, cast(void*)0);
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96662], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96668], cast(void*)0, cast(void*)0);
	}
}
