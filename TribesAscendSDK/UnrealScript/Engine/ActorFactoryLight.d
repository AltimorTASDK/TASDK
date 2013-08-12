module UnrealScript.Engine.ActorFactoryLight;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryLight : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryLight")); }
	private static __gshared ActorFactoryLight mDefaultProperties;
	@property final static ActorFactoryLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryLight)("ActorFactoryLight Engine.Default__ActorFactoryLight")); }
}
