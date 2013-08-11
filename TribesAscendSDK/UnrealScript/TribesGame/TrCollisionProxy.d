module UnrealScript.TribesGame.TrCollisionProxy;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TrCollisionProxy : Actor
{
	public @property final auto ref ScriptArray!(Pawn) m_NearByPawns() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 476); }
	public @property final bool m_bTrackLocallyControlledPawnsOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x20) != 0; }
	public @property final bool m_bTrackLocallyControlledPawnsOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x20; } return val; }
	public @property final bool m_bForwardOwnerOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x10) != 0; }
	public @property final bool m_bForwardOwnerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x10; } return val; }
	public @property final bool m_bIgnoreInvulnerablePlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x8) != 0; }
	public @property final bool m_bIgnoreInvulnerablePlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x8; } return val; }
	public @property final bool m_bIgnoreHackedPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
	public @property final bool m_bIgnoreHackedPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
	public @property final bool m_bIgnoreNonPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
	public @property final bool m_bIgnoreNonPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
	public @property final bool m_bIgnoreStealthPlayers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool m_bIgnoreStealthPlayers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	final void TouchOther(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74500], params.ptr, cast(void*)0);
	}
	final void ForceProximityScan(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74503], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74506], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74512], params.ptr, cast(void*)0);
	}
	final bool ShouldIgnoreActor(Actor pActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = pActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74515], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ForceClearNearByPawnsList()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74518], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74520], cast(void*)0, cast(void*)0);
	}
	final void CheckNearByPawns(Pawn aPawn, bool bAdd)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74521], params.ptr, cast(void*)0);
	}
	final void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74527], params.ptr, cast(void*)0);
	}
	final void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74529], params.ptr, cast(void*)0);
	}
	final int GetNearByPawns(bool bOnlyValid)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOnlyValid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74531], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74537], params.ptr, cast(void*)0);
	}
}
