module UnrealScript.TribesGame.TrDeployable_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_Turret;

extern(C++) interface TrDeployable_WallTurret : TrDeployable_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_WallTurret")); }
}
