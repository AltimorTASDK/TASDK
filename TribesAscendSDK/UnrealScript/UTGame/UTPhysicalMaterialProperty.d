module UnrealScript.UTGame.UTPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface UTPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTPhysicalMaterialProperty")()); }
	private static __gshared UTPhysicalMaterialProperty mDefaultProperties;
	@property final static UTPhysicalMaterialProperty DefaultProperties() { mixin(MGDPC!(UTPhysicalMaterialProperty, "UTPhysicalMaterialProperty UTGame.Default__UTPhysicalMaterialProperty")()); }
	@property final auto ref ScriptName MaterialType() { mixin(MGPC!("ScriptName", 60)()); }
}
