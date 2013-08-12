module UnrealScript.Engine.ApexDestructibleActorSpawnable;

import ScriptClasses;
import UnrealScript.Engine.ApexDestructibleActor;

extern(C++) interface ApexDestructibleActorSpawnable : ApexDestructibleActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ApexDestructibleActorSpawnable")); }
	private static __gshared ApexDestructibleActorSpawnable mDefaultProperties;
	@property final static ApexDestructibleActorSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ApexDestructibleActorSpawnable)("ApexDestructibleActorSpawnable Engine.Default__ApexDestructibleActorSpawnable")); }
}
