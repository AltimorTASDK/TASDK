module UnrealScript.TribesGame.TrProj_WallTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_WallTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_WallTurret")()); }
	private static __gshared TrProj_WallTurret mDefaultProperties;
	@property final static TrProj_WallTurret DefaultProperties() { mixin(MGDPC!(TrProj_WallTurret, "TrProj_WallTurret TribesGame.Default__TrProj_WallTurret")()); }
}
