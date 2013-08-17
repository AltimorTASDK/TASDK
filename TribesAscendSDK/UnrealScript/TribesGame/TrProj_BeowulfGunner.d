module UnrealScript.TribesGame.TrProj_BeowulfGunner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BeowulfGunner : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_BeowulfGunner")); }
	private static __gshared TrProj_BeowulfGunner mDefaultProperties;
	@property final static TrProj_BeowulfGunner DefaultProperties() { mixin(MGDPC("TrProj_BeowulfGunner", "TrProj_BeowulfGunner TribesGame.Default__TrProj_BeowulfGunner")); }
}
