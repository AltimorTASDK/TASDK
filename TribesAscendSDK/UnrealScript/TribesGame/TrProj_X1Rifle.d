module UnrealScript.TribesGame.TrProj_X1Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_X1Rifle : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_X1Rifle")); }
	private static __gshared TrProj_X1Rifle mDefaultProperties;
	@property final static TrProj_X1Rifle DefaultProperties() { mixin(MGDPC("TrProj_X1Rifle", "TrProj_X1Rifle TribesGame.Default__TrProj_X1Rifle")); }
}
