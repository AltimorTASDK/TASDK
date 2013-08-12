module UnrealScript.Engine.WindDirectionalSourceComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface WindDirectionalSourceComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WindDirectionalSourceComponent")); }
	private static __gshared WindDirectionalSourceComponent mDefaultProperties;
	@property final static WindDirectionalSourceComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(WindDirectionalSourceComponent)("WindDirectionalSourceComponent Engine.Default__WindDirectionalSourceComponent")); }
	@property final auto ref
	{
		float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		float Frequency() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
		float Phase() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
		float Strength() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		UObject.Pointer SceneProxy() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	}
}
