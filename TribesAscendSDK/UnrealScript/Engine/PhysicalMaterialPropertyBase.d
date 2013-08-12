module UnrealScript.Engine.PhysicalMaterialPropertyBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PhysicalMaterialPropertyBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PhysicalMaterialPropertyBase")); }
	private static __gshared PhysicalMaterialPropertyBase mDefaultProperties;
	@property final static PhysicalMaterialPropertyBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PhysicalMaterialPropertyBase)("PhysicalMaterialPropertyBase Engine.Default__PhysicalMaterialPropertyBase")); }
}
