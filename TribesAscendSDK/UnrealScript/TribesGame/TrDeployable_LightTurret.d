module UnrealScript.TribesGame.TrDeployable_LightTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_LightTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_LightTurret")()); }
	private static __gshared TrDeployable_LightTurret mDefaultProperties;
	@property final static TrDeployable_LightTurret DefaultProperties() { mixin(MGDPC!(TrDeployable_LightTurret, "TrDeployable_LightTurret TribesGame.Default__TrDeployable_LightTurret")()); }
}
