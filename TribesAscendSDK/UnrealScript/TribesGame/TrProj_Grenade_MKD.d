module UnrealScript.TribesGame.TrProj_Grenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_Grenade_MKD : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_Grenade_MKD")); }
	private static __gshared TrProj_Grenade_MKD mDefaultProperties;
	@property final static TrProj_Grenade_MKD DefaultProperties() { mixin(MGDPC("TrProj_Grenade_MKD", "TrProj_Grenade_MKD TribesGame.Default__TrProj_Grenade_MKD")); }
}
