module UnrealScript.TribesGame.TrProj_NJ5SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_NJ5SMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_NJ5SMG")); }
	private static __gshared TrProj_NJ5SMG mDefaultProperties;
	@property final static TrProj_NJ5SMG DefaultProperties() { mixin(MGDPC("TrProj_NJ5SMG", "TrProj_NJ5SMG TribesGame.Default__TrProj_NJ5SMG")); }
}
