module UnrealScript.TribesGame.TrDevice_WallTurretDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_WallTurretDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_WallTurretDeployable")()); }
	private static __gshared TrDevice_WallTurretDeployable mDefaultProperties;
	@property final static TrDevice_WallTurretDeployable DefaultProperties() { mixin(MGDPC!(TrDevice_WallTurretDeployable, "TrDevice_WallTurretDeployable TribesGame.Default__TrDevice_WallTurretDeployable")()); }
}
