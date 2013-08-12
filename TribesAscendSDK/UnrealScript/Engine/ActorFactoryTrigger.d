module UnrealScript.Engine.ActorFactoryTrigger;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryTrigger : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryTrigger")); }
}
