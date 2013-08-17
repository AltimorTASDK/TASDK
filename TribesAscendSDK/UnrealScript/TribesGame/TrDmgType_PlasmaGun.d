module UnrealScript.TribesGame.TrDmgType_PlasmaGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_PlasmaGun : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_PlasmaGun")()); }
	private static __gshared TrDmgType_PlasmaGun mDefaultProperties;
	@property final static TrDmgType_PlasmaGun DefaultProperties() { mixin(MGDPC!(TrDmgType_PlasmaGun, "TrDmgType_PlasmaGun TribesGame.Default__TrDmgType_PlasmaGun")()); }
}
