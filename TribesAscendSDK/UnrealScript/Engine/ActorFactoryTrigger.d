module UnrealScript.Engine.ActorFactoryTrigger;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryTrigger : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryTrigger")); }
	private static __gshared ActorFactoryTrigger mDefaultProperties;
	@property final static ActorFactoryTrigger DefaultProperties() { mixin(MGDPC("ActorFactoryTrigger", "ActorFactoryTrigger Engine.Default__ActorFactoryTrigger")); }
}
