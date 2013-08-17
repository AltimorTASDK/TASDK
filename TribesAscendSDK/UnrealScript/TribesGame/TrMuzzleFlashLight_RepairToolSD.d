module UnrealScript.TribesGame.TrMuzzleFlashLight_RepairToolSD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_RepairToolSD : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMuzzleFlashLight_RepairToolSD")); }
	private static __gshared TrMuzzleFlashLight_RepairToolSD mDefaultProperties;
	@property final static TrMuzzleFlashLight_RepairToolSD DefaultProperties() { mixin(MGDPC("TrMuzzleFlashLight_RepairToolSD", "TrMuzzleFlashLight_RepairToolSD TribesGame.Default__TrMuzzleFlashLight_RepairToolSD")); }
}
