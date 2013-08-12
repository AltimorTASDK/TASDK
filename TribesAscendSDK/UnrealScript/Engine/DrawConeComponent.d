module UnrealScript.Engine.DrawConeComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface DrawConeComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawConeComponent")); }
	private static __gshared DrawConeComponent mDefaultProperties;
	@property final static DrawConeComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawConeComponent)("DrawConeComponent Engine.Default__DrawConeComponent")); }
	@property final auto ref
	{
		int ConeSides() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
		float ConeAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float ConeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		UObject.Color ConeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
	}
}
