module UnrealScript.TribesGame.TrDevice_PlasmaGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_PlasmaGun : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_PlasmaGun")); }
	private static __gshared TrDevice_PlasmaGun mDefaultProperties;
	@property final static TrDevice_PlasmaGun DefaultProperties() { mixin(MGDPC("TrDevice_PlasmaGun", "TrDevice_PlasmaGun TribesGame.Default__TrDevice_PlasmaGun")); }
}
