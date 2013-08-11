module UnrealScript.UTGame.UTActorFactoryPickup;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryPickup : ActorFactory
{
	public @property final auto ref ScriptClass InventoryClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39159], params.ptr, cast(void*)0);
	}
}
