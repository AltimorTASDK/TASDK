module UnrealScript.Engine.CameraShake;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface CameraShake : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CameraShake")); }
	private static __gshared CameraShake mDefaultProperties;
	@property final static CameraShake DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CameraShake)("CameraShake Engine.Default__CameraShake")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetLocOscillationMagnitude;
			ScriptFunction mGetRotOscillationMagnitude;
		}
		public @property static final
		{
			ScriptFunction GetLocOscillationMagnitude() { return mGetLocOscillationMagnitude ? mGetLocOscillationMagnitude : (mGetLocOscillationMagnitude = ScriptObject.Find!(ScriptFunction)("Function Engine.CameraShake.GetLocOscillationMagnitude")); }
			ScriptFunction GetRotOscillationMagnitude() { return mGetRotOscillationMagnitude ? mGetRotOscillationMagnitude : (mGetRotOscillationMagnitude = ScriptObject.Find!(ScriptFunction)("Function Engine.CameraShake.GetRotOscillationMagnitude")); }
		}
	}
	enum EInitialOscillatorOffset : ubyte
	{
		EOO_OffsetRandom = 0,
		EOO_OffsetZero = 1,
		EOO_MAX = 2,
	}
	struct FOscillator
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.CameraShake.FOscillator")); }
		@property final auto ref
		{
			float Amplitude() { return *cast(float*)(cast(size_t)&this + 0); }
			float Frequency() { return *cast(float*)(cast(size_t)&this + 4); }
			CameraShake.EInitialOscillatorOffset InitialOffset() { return *cast(CameraShake.EInitialOscillatorOffset*)(cast(size_t)&this + 8); }
		}
	}
	struct VOscillator
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.CameraShake.VOscillator")); }
		@property final auto ref
		{
			CameraShake.FOscillator X() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 0); }
			CameraShake.FOscillator Y() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 12); }
			CameraShake.FOscillator Z() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 24); }
		}
	}
	struct ROscillator
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.CameraShake.ROscillator")); }
		@property final auto ref
		{
			CameraShake.FOscillator Pitch() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 0); }
			CameraShake.FOscillator Yaw() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 12); }
			CameraShake.FOscillator Roll() { return *cast(CameraShake.FOscillator*)(cast(size_t)&this + 24); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraShake.VOscillator LocOscillation() { return *cast(CameraShake.VOscillator*)(cast(size_t)cast(void*)this + 112); }
			CameraShake.ROscillator RotOscillation() { return *cast(CameraShake.ROscillator*)(cast(size_t)cast(void*)this + 76); }
			float OscillationDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			float OscillationBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float OscillationBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			CameraShake.FOscillator FOVOscillation() { return *cast(CameraShake.FOscillator*)(cast(size_t)cast(void*)this + 148); }
			CameraAnim Anim() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 160); }
			float AnimPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float AnimScale() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float AnimBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
			float AnimBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
			float RandomAnimSegmentDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
		}
		bool bSingleInstance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bSingleInstance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool bRandomAnimSegment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bRandomAnimSegment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	}
final:
	float GetLocOscillationMagnitude()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocOscillationMagnitude, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetRotOscillationMagnitude()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRotOscillationMagnitude, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
