module UnrealScript.Engine.SeqAct_AIMoveToActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqAct_AIMoveToActor : SeqAct_Latent
{
	public @property final auto ref ScriptArray!(Actor) Destination() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref int LastDestinationChoice() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref Actor LookAt() { return *cast(Actor*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float MovementSpeedModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final bool bPickClosest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
	public @property final bool bPickClosest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
	public @property final bool bInterruptable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
	public @property final bool bInterruptable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	final Actor PickDestination(Actor Requestor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9737], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25585], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
