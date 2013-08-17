module UnrealScript.Engine.ActorFactoryPylon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPylon : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryPylon")); }
	private static __gshared ActorFactoryPylon mDefaultProperties;
	@property final static ActorFactoryPylon DefaultProperties() { mixin(MGDPC("ActorFactoryPylon", "ActorFactoryPylon Engine.Default__ActorFactoryPylon")); }
}
