module UnrealScript.Engine.StaticMeshCollectionActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshCollectionActor : StaticMeshActorBase
{
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) StaticMeshComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int MaxStaticMeshComponents() { return *cast(int*)(cast(size_t)cast(void*)this + 488); }
}
