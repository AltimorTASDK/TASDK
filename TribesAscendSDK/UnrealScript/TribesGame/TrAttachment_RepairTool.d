module UnrealScript.TribesGame.TrAttachment_RepairTool;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RepairTool : TrDeviceAttachment
{
	public @property final auto ref Vector m_Tangent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref Vector m_Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 792); }
	public @property final bool m_bIsTracerActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 784) & 0x1) != 0; }
	public @property final bool m_bIsTracerActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 784) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 784) &= ~0x1; } return val; }
	final void KillRepairEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68655], cast(void*)0, cast(void*)0);
	}
	final void SpawnRepairEffect(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68656], params.ptr, cast(void*)0);
	}
	final void UpdateRepairEffect(float DeltaTime, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68659], params.ptr, cast(void*)0);
	}
	final void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68663], params.ptr, cast(void*)0);
	}
	final void ThirdPersonFireEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68670], params.ptr, cast(void*)0);
	}
	final void StopThirdPersonFireEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[68674], cast(void*)0, cast(void*)0);
	}
}
