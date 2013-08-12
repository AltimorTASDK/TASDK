module UnrealScript.TribesGame.TrDeployableHologram_PersonalForceField;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_PersonalForceField : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableHologram_PersonalForceField")); }
	private static __gshared TrDeployableHologram_PersonalForceField mDefaultProperties;
	@property final static TrDeployableHologram_PersonalForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDeployableHologram_PersonalForceField)("TrDeployableHologram_PersonalForceField TribesGame.Default__TrDeployableHologram_PersonalForceField")); }
}
