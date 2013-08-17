module UnrealScript.Engine.ActorFactoryArchetype;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactoryArchetype : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryArchetype")()); }
	private static __gshared ActorFactoryArchetype mDefaultProperties;
	@property final static ActorFactoryArchetype DefaultProperties() { mixin(MGDPC!(ActorFactoryArchetype, "ActorFactoryArchetype Engine.Default__ActorFactoryArchetype")()); }
	@property final auto ref Actor ArchetypeActor() { mixin(MGPC!(Actor, 92)()); }
}
