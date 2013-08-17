module UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_FullAuto : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVehicleWeapon_FullAuto")); }
	private static __gshared TrVehicleWeapon_FullAuto mDefaultProperties;
	@property final static TrVehicleWeapon_FullAuto DefaultProperties() { mixin(MGDPC("TrVehicleWeapon_FullAuto", "TrVehicleWeapon_FullAuto TribesGame.Default__TrVehicleWeapon_FullAuto")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRefireCheckTimer;
		public @property static final ScriptFunction RefireCheckTimer() { mixin(MGF("mRefireCheckTimer", "Function TribesGame.TrVehicleWeapon_FullAuto.RefireCheckTimer")); }
	}
	static struct WeaponFullAutoFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrVehicleWeapon_FullAuto.WeaponFullAutoFiring")); }
	}
	@property final auto ref
	{
		ScriptArray!(SoundCue) WeaponFireFullAutoSnd() { mixin(MGPC("ScriptArray!(SoundCue)", 1780)); }
		ScriptName m_PostFireState() { mixin(MGPC("ScriptName", 1796)); }
		SoundCue m_FireTail() { mixin(MGPC("SoundCue", 1792)); }
	}
	final void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefireCheckTimer, cast(void*)0, cast(void*)0);
	}
}
