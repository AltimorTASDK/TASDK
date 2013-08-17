module UnrealScript.Engine.ActorFactoryDominantDirectionalLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryDominantDirectionalLight : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryDominantDirectionalLight")); }
	private static __gshared ActorFactoryDominantDirectionalLight mDefaultProperties;
	@property final static ActorFactoryDominantDirectionalLight DefaultProperties() { mixin(MGDPC("ActorFactoryDominantDirectionalLight", "ActorFactoryDominantDirectionalLight Engine.Default__ActorFactoryDominantDirectionalLight")); }
}
