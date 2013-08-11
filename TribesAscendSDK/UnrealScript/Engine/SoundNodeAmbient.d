module UnrealScript.Engine.SoundNodeAmbient;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.SoundNodeAttenuation;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface SoundNodeAmbient : SoundNode
{
	struct AmbientSoundSlot
	{
		public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Weight[4];
		public @property final auto ref float VolumeScale() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __VolumeScale[4];
		public @property final auto ref float PitchScale() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __PitchScale[4];
		public @property final auto ref SoundNodeWave Wave() { return *cast(SoundNodeWave*)(cast(size_t)&this + 0); }
		private ubyte __Wave[4];
	}
	public @property final auto ref ScriptArray!(SoundNodeAmbient.AmbientSoundSlot) SoundSlots() { return *cast(ScriptArray!(SoundNodeAmbient.AmbientSoundSlot)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref DistributionFloat.RawDistributionFloat VolumeModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref DistributionFloat.RawDistributionFloat PitchModulation() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref DistributionFloat.RawDistributionFloat LPFMaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref DistributionFloat.RawDistributionFloat LPFMinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref DistributionFloat.RawDistributionFloat MaxRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref DistributionFloat.RawDistributionFloat MinRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref SoundNodeWave Wave() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float VolumeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float VolumeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float PitchMax() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float PitchMin() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float LPFRadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float LPFRadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float RadiusMax() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float RadiusMin() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref SoundNodeAttenuation.SoundDistanceModel DistanceModel() { return *cast(SoundNodeAttenuation.SoundDistanceModel*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float dBAttenuationAtMax() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bAttenuateWithLowPassFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
	public @property final bool bAttenuateWithLowPassFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
	public @property final bool bAttenuateWithLPF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
	public @property final bool bAttenuateWithLPF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
	public @property final bool bSpatialize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool bSpatialize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final bool bAttenuate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bAttenuate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
}
