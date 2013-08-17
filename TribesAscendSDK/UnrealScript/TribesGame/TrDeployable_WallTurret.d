module UnrealScript.TribesGame.TrDeployable_WallTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_WallTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployable_WallTurret")); }
	private static __gshared TrDeployable_WallTurret mDefaultProperties;
	@property final static TrDeployable_WallTurret DefaultProperties() { mixin(MGDPC("TrDeployable_WallTurret", "TrDeployable_WallTurret TribesGame.Default__TrDeployable_WallTurret")); }
}
