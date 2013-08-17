module UnrealScript.TribesGame.TrPhysicalMaterialProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;

extern(C++) interface TrPhysicalMaterialProperty : PhysicalMaterialPropertyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPhysicalMaterialProperty")()); }
	private static __gshared TrPhysicalMaterialProperty mDefaultProperties;
	@property final static TrPhysicalMaterialProperty DefaultProperties() { mixin(MGDPC!(TrPhysicalMaterialProperty, "TrPhysicalMaterialProperty TribesGame.Default__TrPhysicalMaterialProperty")()); }
	@property final auto ref ScriptName MaterialType() { mixin(MGPC!(ScriptName, 60)()); }
}
