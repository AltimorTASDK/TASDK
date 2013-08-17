module UnrealScript.TribesGame.TrDmgType_AutoShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AutoShotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AutoShotgun")); }
	private static __gshared TrDmgType_AutoShotgun mDefaultProperties;
	@property final static TrDmgType_AutoShotgun DefaultProperties() { mixin(MGDPC("TrDmgType_AutoShotgun", "TrDmgType_AutoShotgun TribesGame.Default__TrDmgType_AutoShotgun")); }
}
