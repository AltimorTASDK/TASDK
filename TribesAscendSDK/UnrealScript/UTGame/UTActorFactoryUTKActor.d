module UnrealScript.UTGame.UTActorFactoryUTKActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryRigidBody;

extern(C++) interface UTActorFactoryUTKActor : ActorFactoryRigidBody
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTActorFactoryUTKActor")); }
	private static __gshared UTActorFactoryUTKActor mDefaultProperties;
	@property final static UTActorFactoryUTKActor DefaultProperties() { mixin(MGDPC("UTActorFactoryUTKActor", "UTActorFactoryUTKActor UTGame.Default__UTActorFactoryUTKActor")); }
}
