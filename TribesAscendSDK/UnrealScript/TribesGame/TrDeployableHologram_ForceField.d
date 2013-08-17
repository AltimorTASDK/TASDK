module UnrealScript.TribesGame.TrDeployableHologram_ForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_ForceField : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram_ForceField")()); }
	private static __gshared TrDeployableHologram_ForceField mDefaultProperties;
	@property final static TrDeployableHologram_ForceField DefaultProperties() { mixin(MGDPC!(TrDeployableHologram_ForceField, "TrDeployableHologram_ForceField TribesGame.Default__TrDeployableHologram_ForceField")()); }
}
