module UnrealScript.TribesGame.TrProj_TCN4SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TCN4SMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_TCN4SMG")); }
	private static __gshared TrProj_TCN4SMG mDefaultProperties;
	@property final static TrProj_TCN4SMG DefaultProperties() { mixin(MGDPC("TrProj_TCN4SMG", "TrProj_TCN4SMG TribesGame.Default__TrProj_TCN4SMG")); }
}
