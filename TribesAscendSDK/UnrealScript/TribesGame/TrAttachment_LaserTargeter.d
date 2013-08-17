module UnrealScript.TribesGame.TrAttachment_LaserTargeter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LaserTargeter : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_LaserTargeter")()); }
	private static __gshared TrAttachment_LaserTargeter mDefaultProperties;
	@property final static TrAttachment_LaserTargeter DefaultProperties() { mixin(MGDPC!(TrAttachment_LaserTargeter, "TrAttachment_LaserTargeter TribesGame.Default__TrAttachment_LaserTargeter")()); }
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
			ScriptFunction KillLaserEffect() { mixin(MGF!("mKillLaserEffect", "Function TribesGame.TrAttachment_LaserTargeter.KillLaserEffect")()); }
			ScriptFunction SpawnLaserEffect() { mixin(MGF!("mSpawnLaserEffect", "Function TribesGame.TrAttachment_LaserTargeter.SpawnLaserEffect")()); }
			ScriptFunction UpdateLaserEffect() { mixin(MGF!("mUpdateLaserEffect", "Function TribesGame.TrAttachment_LaserTargeter.UpdateLaserEffect")()); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF!("mThirdPersonFireEffects", "Function TribesGame.TrAttachment_LaserTargeter.ThirdPersonFireEffects")()); }
			ScriptFunction StopThirdPersonFireEffects() { mixin(MGF!("mStopThirdPersonFireEffects", "Function TribesGame.TrAttachment_LaserTargeter.StopThirdPersonFireEffects")()); }
		}
	}
	@property final
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_pscLaserEffect'!
		bool m_bIsTracerActive() { mixin(MGBPC!(784, 0x1)()); }
		bool m_bIsTracerActive(bool val) { mixin(MSBPC!(784, 0x1)()); }
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
