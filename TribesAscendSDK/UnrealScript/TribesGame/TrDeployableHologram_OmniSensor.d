module UnrealScript.TribesGame.TrDeployableHologram_OmniSensor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_OmniSensor : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_OmniSensor")); }
	private static __gshared TrDeployableHologram_OmniSensor mDefaultProperties;
	@property final static TrDeployableHologram_OmniSensor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_OmniSensor)("TrDeployableHologram_OmniSensor TribesGame.Default__TrDeployableHologram_OmniSensor")); }
}
