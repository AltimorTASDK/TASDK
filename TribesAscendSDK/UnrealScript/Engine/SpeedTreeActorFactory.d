module UnrealScript.Engine.SpeedTreeActorFactory;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.SpeedTree;

extern(C++) interface SpeedTreeActorFactory : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeedTreeActorFactory")); }
	// WARNING: Property 'SpeedTree' has the same name as a defined type!
}
