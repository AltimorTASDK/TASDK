module UnrealScript.Engine.ActorFactoryPlayerStart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPlayerStart : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryPlayerStart")()); }
	private static __gshared ActorFactoryPlayerStart mDefaultProperties;
	@property final static ActorFactoryPlayerStart DefaultProperties() { mixin(MGDPC!(ActorFactoryPlayerStart, "ActorFactoryPlayerStart Engine.Default__ActorFactoryPlayerStart")()); }
}
