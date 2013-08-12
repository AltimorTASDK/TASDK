module UnrealScript.TribesGame.TrAttachment_LaserTargeter;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LaserTargeter : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LaserTargeter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mKillLaserEffect;
			ScriptFunction mSpawnLaserEffect;
			ScriptFunction mUpdateLaserEffect;
			ScriptFunction mThirdPersonFireEffects;
			ScriptFunction mStopThirdPersonFireEffects;
		}
		public @property static final
		{
			ScriptFunction KillLaserEffect() { return mKillLaserEffect ? mKillLaserEffect : (mKillLaserEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_LaserTargeter.KillLaserEffect")); }
			ScriptFunction SpawnLaserEffect() { return mSpawnLaserEffect ? mSpawnLaserEffect : (mSpawnLaserEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_LaserTargeter.SpawnLaserEffect")); }
			ScriptFunction UpdateLaserEffect() { return mUpdateLaserEffect ? mUpdateLaserEffect : (mUpdateLaserEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_LaserTargeter.UpdateLaserEffect")); }
			ScriptFunction ThirdPersonFireEffects() { return mThirdPersonFireEffects ? mThirdPersonFireEffects : (mThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_LaserTargeter.ThirdPersonFireEffects")); }
			ScriptFunction StopThirdPersonFireEffects() { return mStopThirdPersonFireEffects ? mStopThirdPersonFireEffects : (mStopThirdPersonFireEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_LaserTargeter.StopThirdPersonFireEffects")); }
		}
	}
	@property final
	{
		bool m_bIsTracerActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 784) & 0x1) != 0; }
		bool m_bIsTracerActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 784) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 784) &= ~0x1; } return val; }
	}
final:
	void KillLaserEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillLaserEffect, cast(void*)0, cast(void*)0);
	}
	void SpawnLaserEffect(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnLaserEffect, params.ptr, cast(void*)0);
	}
	void UpdateLaserEffect(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLaserEffect, params.ptr, cast(void*)0);
	}
	void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.ThirdPersonFireEffects, params.ptr, cast(void*)0);
	}
	void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopThirdPersonFireEffects, cast(void*)0, cast(void*)0);
	}
}
