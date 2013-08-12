module UnrealScript.Engine.ModelComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ModelComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ModelComponent")); }
	private static __gshared ModelComponent mDefaultProperties;
	@property final static ModelComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ModelComponent)("ModelComponent Engine.Default__ModelComponent")); }
	@property final auto ref
	{
		ScriptArray!(UObject.Pointer) Nodes() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 500); }
		ScriptArray!(UObject.Pointer) Elements() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 512); }
		int ComponentIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 496); }
		int ZoneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 492); }
		// WARNING: Property 'Model' has the same name as a defined type!
	}
}
