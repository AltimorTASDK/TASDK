module UnrealScript.Engine.ActorFactoryActor;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryActor : ActorFactory
{
public extern(D):
	@property final auto ref ScriptClass ActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}
