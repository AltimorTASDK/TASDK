module UnrealScript.TribesGame.TrDmgType_AssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AssaultRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AssaultRifle")); }
	private static __gshared TrDmgType_AssaultRifle mDefaultProperties;
	@property final static TrDmgType_AssaultRifle DefaultProperties() { mixin(MGDPC("TrDmgType_AssaultRifle", "TrDmgType_AssaultRifle TribesGame.Default__TrDmgType_AssaultRifle")); }
}
