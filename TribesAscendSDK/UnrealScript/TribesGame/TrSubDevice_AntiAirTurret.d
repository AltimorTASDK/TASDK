module UnrealScript.TribesGame.TrSubDevice_AntiAirTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_AntiAirTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice_AntiAirTurret")); }
	private static __gshared TrSubDevice_AntiAirTurret mDefaultProperties;
	@property final static TrSubDevice_AntiAirTurret DefaultProperties() { mixin(MGDPC("TrSubDevice_AntiAirTurret", "TrSubDevice_AntiAirTurret TribesGame.Default__TrSubDevice_AntiAirTurret")); }
}
