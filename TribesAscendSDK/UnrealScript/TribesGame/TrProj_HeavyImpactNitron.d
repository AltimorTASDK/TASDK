module UnrealScript.TribesGame.TrProj_HeavyImpactNitron;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HeavyImpactNitron : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavyImpactNitron")); }
	private static __gshared TrProj_HeavyImpactNitron mDefaultProperties;
	@property final static TrProj_HeavyImpactNitron DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HeavyImpactNitron)("TrProj_HeavyImpactNitron TribesGame.Default__TrProj_HeavyImpactNitron")); }
}
