module UnrealScript.TribesGame.TrCallIn_OrbitalStrike;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCallIn_Projectile;

extern(C++) interface TrCallIn_OrbitalStrike : TrCallIn_Projectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrCallIn_OrbitalStrike")); }
	private static __gshared TrCallIn_OrbitalStrike mDefaultProperties;
	@property final static TrCallIn_OrbitalStrike DefaultProperties() { mixin(MGDPC("TrCallIn_OrbitalStrike", "TrCallIn_OrbitalStrike TribesGame.Default__TrCallIn_OrbitalStrike")); }
}
