module UnrealScript.TribesGame.TrDeployableHologram_WallTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeployableHologram;

extern(C++) interface TrDeployableHologram_WallTurret : TrDeployableHologram
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployableHologram_WallTurret")()); }
	private static __gshared TrDeployableHologram_WallTurret mDefaultProperties;
	@property final static TrDeployableHologram_WallTurret DefaultProperties() { mixin(MGDPC!(TrDeployableHologram_WallTurret, "TrDeployableHologram_WallTurret TribesGame.Default__TrDeployableHologram_WallTurret")()); }
}
