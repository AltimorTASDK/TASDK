module UnrealScript.UTGame.UTSD_SpawnedKActor;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface UTSD_SpawnedKActor : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSD_SpawnedKActor")); }
}
