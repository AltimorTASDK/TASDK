module UnrealScript.TribesGame.TrBaseTurret_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;

extern(C++) interface TrBaseTurret_BloodEagle : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBaseTurret_BloodEagle")); }
}
