module UnrealScript.UTGame.UTSD_SpawnedKActor;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface UTSD_SpawnedKActor : KActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSD_SpawnedKActor")); }
	private static __gshared UTSD_SpawnedKActor mDefaultProperties;
	@property final static UTSD_SpawnedKActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSD_SpawnedKActor)("UTSD_SpawnedKActor UTGame.Default__UTSD_SpawnedKActor")); }
}
