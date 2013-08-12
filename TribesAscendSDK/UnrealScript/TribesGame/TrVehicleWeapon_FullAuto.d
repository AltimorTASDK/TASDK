module UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_FullAuto : TrVehicleWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehicleWeapon_FullAuto")); }
	private static __gshared TrVehicleWeapon_FullAuto mDefaultProperties;
	@property final static TrVehicleWeapon_FullAuto DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehicleWeapon_FullAuto)("TrVehicleWeapon_FullAuto TribesGame.Default__TrVehicleWeapon_FullAuto")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRefireCheckTimer;
		public @property static final ScriptFunction RefireCheckTimer() { return mRefireCheckTimer ? mRefireCheckTimer : (mRefireCheckTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehicleWeapon_FullAuto.RefireCheckTimer")); }
	}
	@property final auto ref
	{
		ScriptArray!(SoundCue) WeaponFireFullAutoSnd() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 1780); }
		ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1796); }
		SoundCue m_FireTail() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1792); }
	}
	final void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefireCheckTimer, cast(void*)0, cast(void*)0);
	}
}
