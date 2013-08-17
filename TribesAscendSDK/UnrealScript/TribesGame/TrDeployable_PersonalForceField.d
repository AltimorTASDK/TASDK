module UnrealScript.TribesGame.TrDeployable_PersonalForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_ForceField;

extern(C++) interface TrDeployable_PersonalForceField : TrDeployable_ForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_PersonalForceField")()); }
	private static __gshared TrDeployable_PersonalForceField mDefaultProperties;
	@property final static TrDeployable_PersonalForceField DefaultProperties() { mixin(MGDPC!(TrDeployable_PersonalForceField, "TrDeployable_PersonalForceField TribesGame.Default__TrDeployable_PersonalForceField")()); }
}
