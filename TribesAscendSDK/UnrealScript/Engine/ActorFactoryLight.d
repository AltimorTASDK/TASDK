module UnrealScript.Engine.ActorFactoryLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryLight : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryLight")()); }
	private static __gshared ActorFactoryLight mDefaultProperties;
	@property final static ActorFactoryLight DefaultProperties() { mixin(MGDPC!(ActorFactoryLight, "ActorFactoryLight Engine.Default__ActorFactoryLight")()); }
}
