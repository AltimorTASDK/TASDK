module UnrealScript.Engine.StaticLightCollectionActor;

import ScriptClasses;
import UnrealScript.Engine.Light;

extern(C++) interface StaticLightCollectionActor : Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticLightCollectionActor")); }
	private static __gshared StaticLightCollectionActor mDefaultProperties;
	@property final static StaticLightCollectionActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticLightCollectionActor)("StaticLightCollectionActor Engine.Default__StaticLightCollectionActor")); }
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
