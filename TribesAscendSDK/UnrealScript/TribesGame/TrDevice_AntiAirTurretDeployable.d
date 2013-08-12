module UnrealScript.TribesGame.TrDevice_AntiAirTurretDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Deployable;

extern(C++) interface TrDevice_AntiAirTurretDeployable : TrDevice_Deployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AntiAirTurretDeployable")); }
}
