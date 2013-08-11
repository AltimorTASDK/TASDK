module UnrealScript.UTGame.UTActorFactoryAI;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryAI : ActorFactoryAI
{
public extern(D):
	@property final
	{
		bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
		bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
		bool bForceDeathmatchAI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bForceDeathmatchAI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39150], params.ptr, cast(void*)0);
	}
}
