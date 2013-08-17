module UnrealScript.Engine.ApexDestructibleActorSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ApexDestructibleActor;

extern(C++) interface ApexDestructibleActorSpawnable : ApexDestructibleActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexDestructibleActorSpawnable")()); }
	private static __gshared ApexDestructibleActorSpawnable mDefaultProperties;
	@property final static ApexDestructibleActorSpawnable DefaultProperties() { mixin(MGDPC!(ApexDestructibleActorSpawnable, "ApexDestructibleActorSpawnable Engine.Default__ApexDestructibleActorSpawnable")()); }
}
