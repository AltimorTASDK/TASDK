module UnrealScript.TribesGame.TrDeployableHologram_PersonalForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_PersonalForceField : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableHologram_PersonalForceField")); }
	private static __gshared TrDeployableHologram_PersonalForceField mDefaultProperties;
	@property final static TrDeployableHologram_PersonalForceField DefaultProperties() { mixin(MGDPC("TrDeployableHologram_PersonalForceField", "TrDeployableHologram_PersonalForceField TribesGame.Default__TrDeployableHologram_PersonalForceField")); }
}
