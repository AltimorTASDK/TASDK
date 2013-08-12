module UnrealScript.TribesGame.TrDeployable_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_AntiAirTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_AntiAirTurret")); }
}
