module UnrealScript.Engine.SeqAct_ChangeCollision;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ChangeCollision : SequenceAction
{
	public @property final bool bCollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
	public @property final bool bCollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	public @property final bool bBlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
	public @property final bool bBlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
	public @property final bool bIgnoreEncroachers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x4) != 0; }
	public @property final bool bIgnoreEncroachers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x4; } return val; }
	public @property final auto ref Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 236); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4398], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
