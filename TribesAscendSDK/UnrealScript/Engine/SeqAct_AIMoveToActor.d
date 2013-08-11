module UnrealScript.Engine.SeqAct_AIMoveToActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqAct_AIMoveToActor : SeqAct_Latent
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) Destination() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 252); }
			int LastDestinationChoice() { return *cast(int*)(cast(size_t)cast(void*)this + 272); }
			Actor LookAt() { return *cast(Actor*)(cast(size_t)cast(void*)this + 268); }
			float MovementSpeedModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		}
		bool bPickClosest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bPickClosest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bInterruptable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bInterruptable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
final:
	Actor PickDestination(Actor Requestor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Requestor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9737], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25585], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
