module UnrealScript.TribesGame.TrDmgType_SniperRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SniperRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_SniperRifle")); }
	private static __gshared TrDmgType_SniperRifle mDefaultProperties;
	@property final static TrDmgType_SniperRifle DefaultProperties() { mixin(MGDPC("TrDmgType_SniperRifle", "TrDmgType_SniperRifle TribesGame.Default__TrDmgType_SniperRifle")); }
}
