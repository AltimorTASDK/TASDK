module UnrealScript.TribesGame.TrMuzzleFlashLight_RepairToolSD;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_RepairToolSD : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrMuzzleFlashLight_RepairToolSD")); }
	private static __gshared TrMuzzleFlashLight_RepairToolSD mDefaultProperties;
	@property final static TrMuzzleFlashLight_RepairToolSD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrMuzzleFlashLight_RepairToolSD)("TrMuzzleFlashLight_RepairToolSD TribesGame.Default__TrMuzzleFlashLight_RepairToolSD")); }
}
