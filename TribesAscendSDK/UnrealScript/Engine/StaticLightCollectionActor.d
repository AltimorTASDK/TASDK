module UnrealScript.Engine.StaticLightCollectionActor;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface StaticLightCollectionActor : Light
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LightComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 484); }
		int MaxLightComponents() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
	}
}
