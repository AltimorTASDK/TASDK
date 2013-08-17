module UnrealScript.TribesGame.TrDmgType_WallTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_WallTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_WallTurret")()); }
	private static __gshared TrDmgType_WallTurret mDefaultProperties;
	@property final static TrDmgType_WallTurret DefaultProperties() { mixin(MGDPC!(TrDmgType_WallTurret, "TrDmgType_WallTurret TribesGame.Default__TrDmgType_WallTurret")()); }
}
