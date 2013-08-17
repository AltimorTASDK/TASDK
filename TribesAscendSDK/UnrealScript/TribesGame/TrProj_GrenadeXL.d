module UnrealScript.TribesGame.TrProj_GrenadeXL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeXL : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_GrenadeXL")); }
	private static __gshared TrProj_GrenadeXL mDefaultProperties;
	@property final static TrProj_GrenadeXL DefaultProperties() { mixin(MGDPC("TrProj_GrenadeXL", "TrProj_GrenadeXL TribesGame.Default__TrProj_GrenadeXL")); }
}
