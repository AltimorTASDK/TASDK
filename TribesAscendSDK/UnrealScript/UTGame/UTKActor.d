module UnrealScript.UTGame.UTKActor;

import ScriptClasses;
import UnrealScript.UDKBase.UDKKActorBreakable;

extern(C++) interface UTKActor : UDKKActorBreakable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTKActor")); }
	private static __gshared UTKActor mDefaultProperties;
	@property final static UTKActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTKActor)("UTKActor UTGame.Default__UTKActor")); }
}
