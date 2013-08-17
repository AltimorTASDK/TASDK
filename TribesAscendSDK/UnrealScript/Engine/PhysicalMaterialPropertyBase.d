module UnrealScript.Engine.PhysicalMaterialPropertyBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PhysicalMaterialPropertyBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PhysicalMaterialPropertyBase")); }
	private static __gshared PhysicalMaterialPropertyBase mDefaultProperties;
	@property final static PhysicalMaterialPropertyBase DefaultProperties() { mixin(MGDPC("PhysicalMaterialPropertyBase", "PhysicalMaterialPropertyBase Engine.Default__PhysicalMaterialPropertyBase")); }
}
