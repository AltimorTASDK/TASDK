module UnrealScript.UTGame.UTActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactoryVehicle;

extern(C++) interface UTActorFactoryVehicle : ActorFactoryVehicle
{
public extern(D):
	@property final
	{
		@property final auto ref ubyte TeamNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 100); }
		bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bTeamLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bTeamLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39175], params.ptr, cast(void*)0);
	}
}
