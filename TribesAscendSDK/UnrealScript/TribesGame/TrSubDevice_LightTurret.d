module UnrealScript.TribesGame.TrSubDevice_LightTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_LightTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice_LightTurret")); }
	private static __gshared TrSubDevice_LightTurret mDefaultProperties;
	@property final static TrSubDevice_LightTurret DefaultProperties() { mixin(MGDPC("TrSubDevice_LightTurret", "TrSubDevice_LightTurret TribesGame.Default__TrSubDevice_LightTurret")); }
}
