module UnrealScript.TribesGame.TrSubDevice_BaseTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_BaseTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_BaseTurret")); }
}
