module UnrealScript.Engine.ActorFactoryPylon;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryPylon : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryPylon")); }
	private static __gshared ActorFactoryPylon mDefaultProperties;
	@property final static ActorFactoryPylon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryPylon)("ActorFactoryPylon Engine.Default__ActorFactoryPylon")); }
}
