module UnrealScript.UTGame.UTKActor;

import ScriptClasses;
import UnrealScript.UDKBase.UDKKActorBreakable;

extern(C++) interface UTKActor : UDKKActorBreakable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTKActor")); }
}
