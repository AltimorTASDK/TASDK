module UnrealScript.Engine.ActorFactoryActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryActor : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryActor")); }
	private static __gshared ActorFactoryActor mDefaultProperties;
	@property final static ActorFactoryActor DefaultProperties() { mixin(MGDPC("ActorFactoryActor", "ActorFactoryActor Engine.Default__ActorFactoryActor")); }
	@property final auto ref ScriptClass ActorClass() { mixin(MGPC("ScriptClass", 92)); }
}
