module UnrealScript.TribesGame.TrProj_GrenadeT5;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_GrenadeT5 : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_GrenadeT5")); }
	private static __gshared TrProj_GrenadeT5 mDefaultProperties;
	@property final static TrProj_GrenadeT5 DefaultProperties() { mixin(MGDPC("TrProj_GrenadeT5", "TrProj_GrenadeT5 TribesGame.Default__TrProj_GrenadeT5")); }
}
