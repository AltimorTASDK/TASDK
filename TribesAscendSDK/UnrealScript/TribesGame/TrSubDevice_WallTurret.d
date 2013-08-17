module UnrealScript.TribesGame.TrSubDevice_WallTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_WallTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice_WallTurret")); }
	private static __gshared TrSubDevice_WallTurret mDefaultProperties;
	@property final static TrSubDevice_WallTurret DefaultProperties() { mixin(MGDPC("TrSubDevice_WallTurret", "TrSubDevice_WallTurret TribesGame.Default__TrSubDevice_WallTurret")); }
}
