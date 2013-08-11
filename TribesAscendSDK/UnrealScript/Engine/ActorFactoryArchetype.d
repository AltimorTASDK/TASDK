module UnrealScript.Engine.ActorFactoryArchetype;

import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactoryArchetype : ActorFactory
{
public extern(D):
	@property final auto ref Actor ArchetypeActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 92); }
}
