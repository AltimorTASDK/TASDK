module UnrealScript.Engine.CameraShake;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface CameraShake : UObject
{
	enum EInitialOscillatorOffset : ubyte
	{
		EOO_OffsetRandom = 0,
		EOO_OffsetZero = 1,
		EOO_MAX = 2,
	}
	struct FOscillator
	{
		public @property final auto ref float Amplitude() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Amplitude[4];
		public @property final auto ref float Frequency() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Frequency[4];
		public @property final auto ref CameraShake.EInitialOscillatorOffset InitialOffset() { return *cast(CameraShake.EInitialOscillatorOffset*)(cast(size_t)&this + 8); }
		private ubyte __InitialOffset[1];
	}
	struct VOscillator
	{
		public @property final auto ref CameraShake.FOscillator X() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 0); }
		private ubyte __X[12];
		public @property final auto ref CameraShake.FOscillator Y() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 12); }
		private ubyte __Y[12];
		public @property final auto ref CameraShake.FOscillator Z() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 24); }
		private ubyte __Z[12];
	}
	struct ROscillator
	{
		public @property final auto ref CameraShake.FOscillator Pitch() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 0); }
		private ubyte __Pitch[12];
		public @property final auto ref CameraShake.FOscillator Yaw() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 12); }
		private ubyte __Yaw[12];
		public @property final auto ref CameraShake.FOscillator Roll() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 24); }
		private ubyte __Roll[12];
	}
	public @property final auto ref CameraShake.VOscillator LocOscillation() { return *cast(CameraShake.VOscillator*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref CameraShake.ROscillator RotOscillation() { return *cast(CameraShake.ROscillator*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bSingleInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bSingleInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	public @property final bool bRandomAnimSegment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bRandomAnimSegment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final auto ref float OscillationDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref float OscillationBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float OscillationBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref CameraShake.FOscillator FOVOscillation() { return *cast(CameraShake.FOscillator*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref CameraAnim Anim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float AnimPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float AnimScale() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float AnimBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float AnimBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float RandomAnimSegmentDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	final float GetLocOscillationMagnitude()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12227], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final float GetRotOscillationMagnitude()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12228], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
