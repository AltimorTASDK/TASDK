module UnrealScript.TribesGame.TrDevice_HeavyImpactNitron;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_HeavyImpactNitron : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavyImpactNitron")); }
	private static __gshared TrDevice_HeavyImpactNitron mDefaultProperties;
	@property final static TrDevice_HeavyImpactNitron DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_HeavyImpactNitron)("TrDevice_HeavyImpactNitron TribesGame.Default__TrDevice_HeavyImpactNitron")); }
}
