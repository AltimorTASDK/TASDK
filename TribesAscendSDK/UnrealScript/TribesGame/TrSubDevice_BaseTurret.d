module UnrealScript.TribesGame.TrSubDevice_BaseTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_BaseTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSubDevice_BaseTurret")()); }
	private static __gshared TrSubDevice_BaseTurret mDefaultProperties;
	@property final static TrSubDevice_BaseTurret DefaultProperties() { mixin(MGDPC!(TrSubDevice_BaseTurret, "TrSubDevice_BaseTurret TribesGame.Default__TrSubDevice_BaseTurret")()); }
}
