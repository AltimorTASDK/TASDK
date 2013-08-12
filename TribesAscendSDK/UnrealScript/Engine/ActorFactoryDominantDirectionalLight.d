module UnrealScript.Engine.ActorFactoryDominantDirectionalLight;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryDominantDirectionalLight : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryDominantDirectionalLight")); }
}
