module UnrealScript.TribesGame.TrAttachment_RepairTool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RepairTool : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RepairTool")); }
	private static __gshared TrAttachment_RepairTool mDefaultProperties;
	@property final static TrAttachment_RepairTool DefaultProperties() { mixin(MGDPC("TrAttachment_RepairTool", "TrAttachment_RepairTool TribesGame.Default__TrAttachment_RepairTool")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mKillRepairEffect;
			ScriptFunction mSpawnRepairEffect;
			ScriptFunction mUpdateRepairEffect;
			ScriptFunction mPlayImpactEffects;
			ScriptFunction mThirdPersonFireEffects;
			ScriptFunction mStopThirdPersonFireEffects;
		}
		public @property static final
		{
			ScriptFunction KillRepairEffect() { mixin(MGF("mKillRepairEffect", "Function TribesGame.TrAttachment_RepairTool.KillRepairEffect")); }
			ScriptFunction SpawnRepairEffect() { mixin(MGF("mSpawnRepairEffect", "Function TribesGame.TrAttachment_RepairTool.SpawnRepairEffect")); }
			ScriptFunction UpdateRepairEffect() { mixin(MGF("mUpdateRepairEffect", "Function TribesGame.TrAttachment_RepairTool.UpdateRepairEffect")); }
			ScriptFunction PlayImpactEffects() { mixin(MGF("mPlayImpactEffects", "Function TribesGame.TrAttachment_RepairTool.PlayImpactEffects")); }
			ScriptFunction ThirdPersonFireEffects() { mixin(MGF("mThirdPersonFireEffects", "Function TribesGame.TrAttachment_RepairTool.ThirdPersonFireEffects")); }
			ScriptFunction StopThirdPersonFireEffects() { mixin(MGF("mStopThirdPersonFireEffects", "Function TribesGame.TrAttachment_RepairTool.StopThirdPersonFireEffects")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector m_Tangent() { mixin(MGPC("Vector", 804)); }
			Vector m_Location() { mixin(MGPC("Vector", 792)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_pscRepairEffect'!
		}
		bool m_bIsTracerActive() { mixin(MGBPC(784, 0x1)); }
		bool m_bIsTracerActive(bool val) { mixin(MSBPC(784, 0x1)); }
	}
final:
	void KillRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillRepairEffect, cast(void*)0, cast(void*)0);
	}
	void SpawnRepairEffect(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnRepairEffect, params.ptr, cast(void*)0);
	}
	void UpdateRepairEffect(float DeltaTime, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateRepairEffect, params.ptr, cast(void*)0);
	}
	void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactEffects, params.ptr, cast(void*)0);
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
