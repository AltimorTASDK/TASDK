module UnrealScript.TribesGame.TrEmitCameraEffect_Speed;

import ScriptClasses;
import UnrealScript.UDKBase.UDKEmitCameraEffect;
import UnrealScript.Engine.SoundCue;

extern(C++) interface TrEmitCameraEffect_Speed : UDKEmitCameraEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEmitCameraEffect_Speed")); }
	private static __gshared TrEmitCameraEffect_Speed mDefaultProperties;
	@property final static TrEmitCameraEffect_Speed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEmitCameraEffect_Speed)("TrEmitCameraEffect_Speed TribesGame.Default__TrEmitCameraEffect_Speed")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateLocation;
			ScriptFunction mActivate;
			ScriptFunction mDeactivate;
		}
		public @property static final
		{
			ScriptFunction UpdateLocation() { return mUpdateLocation ? mUpdateLocation : (mUpdateLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEmitCameraEffect_Speed.UpdateLocation")); }
			ScriptFunction Activate() { return mActivate ? mActivate : (mActivate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEmitCameraEffect_Speed.Activate")); }
			ScriptFunction Deactivate() { return mDeactivate ? mDeactivate : (mDeactivate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEmitCameraEffect_Speed.Deactivate")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fFadeOutWeatherSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float m_fFadeInWeatherSoundTime() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			SoundCue m_WeatherSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 504); }
		}
		bool m_bUpdateLocationBasedOnVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool m_bUpdateLocationBasedOnVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
		bool m_bUpdateRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool m_bUpdateRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	}
final:
	void UpdateLocation(Vector* CamLoc, Rotator* CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *CamLoc;
		*cast(Rotator*)&params[12] = *CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocation, params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
	void Activate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activate, cast(void*)0, cast(void*)0);
	}
	void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Deactivate, cast(void*)0, cast(void*)0);
	}
}
