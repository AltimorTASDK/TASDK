module UnrealScript.TribesGame.TrMuzzleFlashLight_RepairTool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrMuzzleFlashLight_RepairTool : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrMuzzleFlashLight_RepairTool")); }
	private static __gshared TrMuzzleFlashLight_RepairTool mDefaultProperties;
	@property final static TrMuzzleFlashLight_RepairTool DefaultProperties() { mixin(MGDPC("TrMuzzleFlashLight_RepairTool", "TrMuzzleFlashLight_RepairTool TribesGame.Default__TrMuzzleFlashLight_RepairTool")); }
}
