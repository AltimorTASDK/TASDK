module UnrealScript.TribesGame.TrDeployableHologram_LightTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_LightTurret : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram_LightTurret")()); }
	private static __gshared TrDeployableHologram_LightTurret mDefaultProperties;
	@property final static TrDeployableHologram_LightTurret DefaultProperties() { mixin(MGDPC!(TrDeployableHologram_LightTurret, "TrDeployableHologram_LightTurret TribesGame.Default__TrDeployableHologram_LightTurret")()); }
}
