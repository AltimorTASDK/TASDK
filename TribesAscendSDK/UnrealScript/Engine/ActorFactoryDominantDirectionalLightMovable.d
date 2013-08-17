module UnrealScript.Engine.ActorFactoryDominantDirectionalLightMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryDominantDirectionalLightMovable : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryDominantDirectionalLightMovable")); }
	private static __gshared ActorFactoryDominantDirectionalLightMovable mDefaultProperties;
	@property final static ActorFactoryDominantDirectionalLightMovable DefaultProperties() { mixin(MGDPC("ActorFactoryDominantDirectionalLightMovable", "ActorFactoryDominantDirectionalLightMovable Engine.Default__ActorFactoryDominantDirectionalLightMovable")); }
}
