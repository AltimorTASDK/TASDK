module UnrealScript.TribesGame.TrMuzzleFlashLight_RepairTool;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_RepairTool : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_RepairTool")); }
	private static __gshared TrMuzzleFlashLight_RepairTool mDefaultProperties;
	@property final static TrMuzzleFlashLight_RepairTool DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMuzzleFlashLight_RepairTool)("TrMuzzleFlashLight_RepairTool TribesGame.Default__TrMuzzleFlashLight_RepairTool")); }
}
