module UnrealScript.TribesGame.TrDmgType_BeowulfGunner;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_BeowulfGunner : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_BeowulfGunner")); }
	private static __gshared TrDmgType_BeowulfGunner mDefaultProperties;
	@property final static TrDmgType_BeowulfGunner DefaultProperties() { mixin(MGDPC("TrDmgType_BeowulfGunner", "TrDmgType_BeowulfGunner TribesGame.Default__TrDmgType_BeowulfGunner")); }
}
