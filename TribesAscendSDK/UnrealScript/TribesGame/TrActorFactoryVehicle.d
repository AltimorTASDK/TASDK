module UnrealScript.TribesGame.TrActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactoryVehicle;

extern(C++) interface TrActorFactoryVehicle : ActorFactoryVehicle
{
	public @property final auto ref ubyte TeamNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 96); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66298], params.ptr, cast(void*)0);
	}
}
