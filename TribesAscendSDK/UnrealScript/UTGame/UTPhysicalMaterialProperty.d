module UnrealScript.UTGame.UTPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface UTPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPhysicalMaterialProperty")); }
	private static __gshared UTPhysicalMaterialProperty mDefaultProperties;
	@property final static UTPhysicalMaterialProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTPhysicalMaterialProperty)("UTPhysicalMaterialProperty UTGame.Default__UTPhysicalMaterialProperty")); }
	@property final auto ref ScriptName MaterialType() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
