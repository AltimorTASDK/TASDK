module UnrealScript.TribesGame.TrDmgType_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeXL_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_GrenadeXL_MKD")); }
	private static __gshared TrDmgType_GrenadeXL_MKD mDefaultProperties;
	@property final static TrDmgType_GrenadeXL_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_GrenadeXL_MKD", "TrDmgType_GrenadeXL_MKD TribesGame.Default__TrDmgType_GrenadeXL_MKD")); }
}
