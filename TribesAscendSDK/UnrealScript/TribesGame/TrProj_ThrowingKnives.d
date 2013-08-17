module UnrealScript.TribesGame.TrProj_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_ThrowingKnives : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ThrowingKnives")); }
	private static __gshared TrProj_ThrowingKnives mDefaultProperties;
	@property final static TrProj_ThrowingKnives DefaultProperties() { mixin(MGDPC("TrProj_ThrowingKnives", "TrProj_ThrowingKnives TribesGame.Default__TrProj_ThrowingKnives")); }
}
