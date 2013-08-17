module UnrealScript.TribesGame.TrDmgType_LightTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_LightTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_LightTurret")()); }
	private static __gshared TrDmgType_LightTurret mDefaultProperties;
	@property final static TrDmgType_LightTurret DefaultProperties() { mixin(MGDPC!(TrDmgType_LightTurret, "TrDmgType_LightTurret TribesGame.Default__TrDmgType_LightTurret")()); }
}
