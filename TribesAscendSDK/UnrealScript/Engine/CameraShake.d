module UnrealScript.Engine.CameraShake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.CameraAnim;

extern(C++) interface CameraShake : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CameraShake")()); }
	private static __gshared CameraShake mDefaultProperties;
	@property final static CameraShake DefaultProperties() { mixin(MGDPC!(CameraShake, "CameraShake Engine.Default__CameraShake")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetLocOscillationMagnitude;
			ScriptFunction mGetRotOscillationMagnitude;
		}
		public @property static final
		{
			ScriptFunction GetLocOscillationMagnitude() { mixin(MGF!("mGetLocOscillationMagnitude", "Function Engine.CameraShake.GetLocOscillationMagnitude")()); }
			ScriptFunction GetRotOscillationMagnitude() { mixin(MGF!("mGetRotOscillationMagnitude", "Function Engine.CameraShake.GetRotOscillationMagnitude")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CameraShake.FOscillator")()); }
		@property final auto ref
		{
			float Amplitude() { mixin(MGPS!(float, 0)()); }
			float Frequency() { mixin(MGPS!(float, 4)()); }
			CameraShake.EInitialOscillatorOffset InitialOffset() { mixin(MGPS!(CameraShake.EInitialOscillatorOffset, 8)()); }
		}
	}
	struct VOscillator
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CameraShake.VOscillator")()); }
		@property final auto ref
		{
			CameraShake.FOscillator X() { mixin(MGPS!(CameraShake.FOscillator, 0)()); }
			CameraShake.FOscillator Y() { mixin(MGPS!(CameraShake.FOscillator, 12)()); }
			CameraShake.FOscillator Z() { mixin(MGPS!(CameraShake.FOscillator, 24)()); }
		}
	}
	struct ROscillator
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CameraShake.ROscillator")()); }
		@property final auto ref
		{
			CameraShake.FOscillator Pitch() { mixin(MGPS!(CameraShake.FOscillator, 0)()); }
			CameraShake.FOscillator Yaw() { mixin(MGPS!(CameraShake.FOscillator, 12)()); }
			CameraShake.FOscillator Roll() { mixin(MGPS!(CameraShake.FOscillator, 24)()); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraShake.VOscillator LocOscillation() { mixin(MGPC!(CameraShake.VOscillator, 112)()); }
			CameraShake.ROscillator RotOscillation() { mixin(MGPC!(CameraShake.ROscillator, 76)()); }
			float OscillationDuration() { mixin(MGPC!(float, 64)()); }
			float OscillationBlendInTime() { mixin(MGPC!(float, 68)()); }
			float OscillationBlendOutTime() { mixin(MGPC!(float, 72)()); }
			CameraShake.FOscillator FOVOscillation() { mixin(MGPC!(CameraShake.FOscillator, 148)()); }
			CameraAnim Anim() { mixin(MGPC!(CameraAnim, 160)()); }
			float AnimPlayRate() { mixin(MGPC!(float, 164)()); }
			float AnimScale() { mixin(MGPC!(float, 168)()); }
			float AnimBlendInTime() { mixin(MGPC!(float, 172)()); }
			float AnimBlendOutTime() { mixin(MGPC!(float, 176)()); }
			float RandomAnimSegmentDuration() { mixin(MGPC!(float, 180)()); }
		}
		bool bSingleInstance() { mixin(MGBPC!(60, 0x1)()); }
		bool bSingleInstance(bool val) { mixin(MSBPC!(60, 0x1)()); }
		bool bRandomAnimSegment() { mixin(MGBPC!(60, 0x2)()); }
		bool bRandomAnimSegment(bool val) { mixin(MSBPC!(60, 0x2)()); }
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
