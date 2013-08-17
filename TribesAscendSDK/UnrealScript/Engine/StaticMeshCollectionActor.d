module UnrealScript.Engine.StaticMeshCollectionActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshCollectionActor : StaticMeshActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.StaticMeshCollectionActor")()); }
	private static __gshared StaticMeshCollectionActor mDefaultProperties;
	@property final static StaticMeshCollectionActor DefaultProperties() { mixin(MGDPC!(StaticMeshCollectionActor, "StaticMeshCollectionActor Engine.Default__StaticMeshCollectionActor")()); }
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) StaticMeshComponents() { mixin(MGPC!("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 476)()); }
		int MaxStaticMeshComponents() { mixin(MGPC!("int", 488)()); }
	}
}
