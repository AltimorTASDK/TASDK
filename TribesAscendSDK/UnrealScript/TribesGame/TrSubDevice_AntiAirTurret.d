module UnrealScript.TribesGame.TrSubDevice_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_AntiAirTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_AntiAirTurret")); }
}
