module UnrealScript.Engine.ActorFactoryPathNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPathNode : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryPathNode")); }
	private static __gshared ActorFactoryPathNode mDefaultProperties;
	@property final static ActorFactoryPathNode DefaultProperties() { mixin(MGDPC("ActorFactoryPathNode", "ActorFactoryPathNode Engine.Default__ActorFactoryPathNode")); }
}
