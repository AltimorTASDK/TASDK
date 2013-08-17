module UnrealScript.TribesGame.TrDmgType_AccurizedShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AccurizedShotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AccurizedShotgun")); }
	private static __gshared TrDmgType_AccurizedShotgun mDefaultProperties;
	@property final static TrDmgType_AccurizedShotgun DefaultProperties() { mixin(MGDPC("TrDmgType_AccurizedShotgun", "TrDmgType_AccurizedShotgun TribesGame.Default__TrDmgType_AccurizedShotgun")); }
}
