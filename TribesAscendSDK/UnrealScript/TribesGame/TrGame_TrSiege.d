module UnrealScript.TribesGame.TrGame_TrSiege;

import ScriptClasses;
import UnrealScript.TribesGame.TrPowerGenerator_Siege;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrGame;

extern(C++) interface TrGame_TrSiege : TrGame
{
	public @property final auto ref ScriptArray!(TrPowerGenerator_Siege) m_Phase1OnlineGenerators() { return *cast(ScriptArray!(TrPowerGenerator_Siege)*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref int m_CurrentPhase() { return *cast(int*)(cast(size_t)cast(void*)this + 1476); }
	public @property final bool m_bWasCoreDestroyedInRoundOne() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x1) != 0; }
	public @property final bool m_bWasCoreDestroyedInRoundOne(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x1; } return val; }
	public @property final auto ref float m_bRoundOneTimeSecs() { return *cast(float*)(cast(size_t)cast(void*)this + 1468); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90864], cast(void*)0, cast(void*)0);
	}
	final void OnGeneratorBlownUp(TrPowerGenerator_Siege G)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPowerGenerator_Siege*)params.ptr = G;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90866], params.ptr, cast(void*)0);
	}
	final void OnCoreBlownUp()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90868], cast(void*)0, cast(void*)0);
	}
	final bool IsInRoundOne()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90869], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void RoundOneOver(bool bDestroyedCore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDestroyedCore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90871], params.ptr, cast(void*)0);
	}
	final void ResetGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90876], cast(void*)0, cast(void*)0);
	}
	final void SetPhase(int PhaseNumber)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PhaseNumber;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90878], params.ptr, cast(void*)0);
	}
	final void SwapTeams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90881], cast(void*)0, cast(void*)0);
	}
	final void EndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90887], params.ptr, cast(void*)0);
	}
}
