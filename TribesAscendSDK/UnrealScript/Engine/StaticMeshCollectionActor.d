module UnrealScript.Engine.StaticMeshCollectionActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshCollectionActor : StaticMeshActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshCollectionActor")); }
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) StaticMeshComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 476); }
		int MaxStaticMeshComponents() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
	}
}
