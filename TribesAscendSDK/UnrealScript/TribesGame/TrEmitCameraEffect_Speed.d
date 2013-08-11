module UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

import ScriptClasses;
import UnrealScript.UDKBase.UDKEmitCameraEffect;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrEmitCameraEffect_Speed : UDKEmitCameraEffect
{
	public @property final auto ref float m_fFadeOutWeatherSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float m_fFadeInWeatherSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref SoundCue m_WeatherSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 504); }
	public @property final bool m_bUpdateLocationBasedOnVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
	public @property final bool m_bUpdateLocationBasedOnVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
	public @property final bool m_bUpdateRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
	public @property final bool m_bUpdateRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	final void UpdateLocation(Vector* CamLoc, Rotator* CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *CamLoc;
		*cast(Rotator*)&params[12] = *CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87248], params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
	final void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87252], cast(void*)0, cast(void*)0);
	}
	final void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87253], cast(void*)0, cast(void*)0);
	}
}
