module UnrealScript.Engine.SoundNodeOscillator;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeOscillator : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeOscillator")); }
	private static __gshared SoundNodeOscillator mDefaultProperties;
	@property final static SoundNodeOscillator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeOscillator)("SoundNodeOscillator Engine.Default__SoundNodeOscillator")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat Center() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 196); }
			DistributionFloat.RawDistributionFloat Offset() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 168); }
			DistributionFloat.RawDistributionFloat Frequency() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 140); }
			DistributionFloat.RawDistributionFloat Amplitude() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 112); }
			float CenterMax() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float CenterMin() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float OffsetMax() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float OffsetMin() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float FrequencyMax() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float FrequencyMin() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float AmplitudeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float AmplitudeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bModulatePitch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bModulatePitch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bModulateVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bModulateVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
