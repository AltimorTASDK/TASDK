module UnrealScript.Engine.ActorFactoryDominantDirectionalLightMovable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryDominantDirectionalLightMovable : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryDominantDirectionalLightMovable")); }
	private static __gshared ActorFactoryDominantDirectionalLightMovable mDefaultProperties;
	@property final static ActorFactoryDominantDirectionalLightMovable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryDominantDirectionalLightMovable)("ActorFactoryDominantDirectionalLightMovable Engine.Default__ActorFactoryDominantDirectionalLightMovable")); }
}
