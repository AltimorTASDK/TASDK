module UnrealScript.TribesGame.TrProj_AssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_AssaultRifle : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_AssaultRifle")); }
	private static __gshared TrProj_AssaultRifle mDefaultProperties;
	@property final static TrProj_AssaultRifle DefaultProperties() { mixin(MGDPC("TrProj_AssaultRifle", "TrProj_AssaultRifle TribesGame.Default__TrProj_AssaultRifle")); }
}
