module UnrealScript.TribesGame.TrDmgType_AssaultRifle_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_AssaultRifle_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AssaultRifle_MKD")); }
	private static __gshared TrDmgType_AssaultRifle_MKD mDefaultProperties;
	@property final static TrDmgType_AssaultRifle_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_AssaultRifle_MKD", "TrDmgType_AssaultRifle_MKD TribesGame.Default__TrDmgType_AssaultRifle_MKD")); }
}
