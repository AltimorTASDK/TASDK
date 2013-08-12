module UnrealScript.TribesGame.TrDeployableHologram_ForceField;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_ForceField : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_ForceField")); }
	private static __gshared TrDeployableHologram_ForceField mDefaultProperties;
	@property final static TrDeployableHologram_ForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_ForceField)("TrDeployableHologram_ForceField TribesGame.Default__TrDeployableHologram_ForceField")); }
}
