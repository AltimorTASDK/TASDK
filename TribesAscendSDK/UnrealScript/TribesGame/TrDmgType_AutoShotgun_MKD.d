module UnrealScript.TribesGame.TrDmgType_AutoShotgun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AutoShotgun_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AutoShotgun_MKD")); }
	private static __gshared TrDmgType_AutoShotgun_MKD mDefaultProperties;
	@property final static TrDmgType_AutoShotgun_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_AutoShotgun_MKD", "TrDmgType_AutoShotgun_MKD TribesGame.Default__TrDmgType_AutoShotgun_MKD")); }
}
