module UnrealScript.GameFramework.PMESTG_LeaveADecalBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface PMESTG_LeaveADecalBase : ParticleModuleEventSendToGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.PMESTG_LeaveADecalBase")); }
	private static __gshared PMESTG_LeaveADecalBase mDefaultProperties;
	@property final static PMESTG_LeaveADecalBase DefaultProperties() { mixin(MGDPC("PMESTG_LeaveADecalBase", "PMESTG_LeaveADecalBase GameFramework.Default__PMESTG_LeaveADecalBase")); }
	@property final auto ref ScriptClass PhysicalMaterialPropertyClass() { mixin(MGPC("ScriptClass", 60)); }
}
