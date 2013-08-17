module UnrealScript.TribesGame.TrDevice_LightTurretDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_LightTurretDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_LightTurretDeployable")()); }
	private static __gshared TrDevice_LightTurretDeployable mDefaultProperties;
	@property final static TrDevice_LightTurretDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_LightTurretDeployable, "TrDevice_LightTurretDeployable TribesGame.Default__TrDevice_LightTurretDeployable")()); }
}
