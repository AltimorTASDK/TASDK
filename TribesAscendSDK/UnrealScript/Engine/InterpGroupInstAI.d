module UnrealScript.Engine.InterpGroupInstAI;

import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroupAI;

extern(C++) interface InterpGroupInstAI : InterpGroupInst
{
	public @property final bool bSavedNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bSavedNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref Actor.EPhysics SavedPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref InterpGroupAI AIGroup() { return *cast(InterpGroupAI*)(cast(size_t)cast(void*)this + 80); }
}
