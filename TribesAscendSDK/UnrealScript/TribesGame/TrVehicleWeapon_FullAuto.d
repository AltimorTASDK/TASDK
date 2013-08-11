module UnrealScript.TribesGame.TrVehicleWeapon_FullAuto;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVehicleWeapon;

extern(C++) interface TrVehicleWeapon_FullAuto : TrVehicleWeapon
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(SoundCue) WeaponFireFullAutoSnd() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 1780); }
		ScriptName m_PostFireState() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1796); }
		SoundCue m_FireTail() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 1792); }
	}
	final void RefireCheckTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115283], cast(void*)0, cast(void*)0);
	}
}
