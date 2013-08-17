module UnrealScript.TribesGame.TrDmgType_HERCGunner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HERCGunner : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_HERCGunner")); }
	private static __gshared TrDmgType_HERCGunner mDefaultProperties;
	@property final static TrDmgType_HERCGunner DefaultProperties() { mixin(MGDPC("TrDmgType_HERCGunner", "TrDmgType_HERCGunner TribesGame.Default__TrDmgType_HERCGunner")); }
}
