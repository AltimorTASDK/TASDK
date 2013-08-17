module UnrealScript.TribesGame.TrProj_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_GrenadeXL;

extern(C++) interface TrProj_GrenadeXL_MKD : TrProj_GrenadeXL
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_GrenadeXL_MKD")); }
	private static __gshared TrProj_GrenadeXL_MKD mDefaultProperties;
	@property final static TrProj_GrenadeXL_MKD DefaultProperties() { mixin(MGDPC("TrProj_GrenadeXL_MKD", "TrProj_GrenadeXL_MKD TribesGame.Default__TrProj_GrenadeXL_MKD")); }
}
