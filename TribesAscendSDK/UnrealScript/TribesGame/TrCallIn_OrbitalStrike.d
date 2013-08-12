module UnrealScript.TribesGame.TrCallIn_OrbitalStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn_Projectile;

extern(C++) interface TrCallIn_OrbitalStrike : TrCallIn_Projectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_OrbitalStrike")); }
	private static __gshared TrCallIn_OrbitalStrike mDefaultProperties;
	@property final static TrCallIn_OrbitalStrike DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrCallIn_OrbitalStrike)("TrCallIn_OrbitalStrike TribesGame.Default__TrCallIn_OrbitalStrike")); }
}
