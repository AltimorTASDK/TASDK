module UnrealScript.TribesGame.TrStationCollision;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;

extern(C++) interface TrStationCollision : Actor
{
	public @property final auto ref TrPawn m_OccupiedPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 480); }
	public @property final bool m_bCanBeUsedDuringWarmupRound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x2) != 0; }
	public @property final bool m_bCanBeUsedDuringWarmupRound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x2; } return val; }
	public @property final bool m_bOccupied() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
	public @property final bool m_bOccupied(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	final int GetPawnsInStation()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98320], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98322], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98332], params.ptr, cast(void*)0);
	}
	final bool CheckCanPawnUseStationNow(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98336], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
