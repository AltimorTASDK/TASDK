module UnrealScript.Engine.ReverbVolume;

import UnrealScript.Engine.Volume;

extern(C++) interface ReverbVolume : Volume
{
	enum ReverbPreset : ubyte
	{
		REVERB_Default = 0,
		REVERB_Bathroom = 1,
		REVERB_StoneRoom = 2,
		REVERB_Auditorium = 3,
		REVERB_ConcertHall = 4,
		REVERB_Cave = 5,
		REVERB_Hallway = 6,
		REVERB_StoneCorridor = 7,
		REVERB_Alley = 8,
		REVERB_Forest = 9,
		REVERB_City = 10,
		REVERB_Mountains = 11,
		REVERB_Quarry = 12,
		REVERB_Plain = 13,
		REVERB_ParkingLot = 14,
		REVERB_SewerPipe = 15,
		REVERB_Underwater = 16,
		REVERB_SmallRoom = 17,
		REVERB_MediumRoom = 18,
		REVERB_LargeRoom = 19,
		REVERB_MediumHall = 20,
		REVERB_LargeHall = 21,
		REVERB_Plate = 22,
		REVERB_MAX = 23,
	}
	struct InteriorSettings
	{
		public @property final bool bIsWorldInfo() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bIsWorldInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bIsWorldInfo[4];
		public @property final auto ref float ExteriorVolume() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __ExteriorVolume[4];
		public @property final auto ref float ExteriorTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __ExteriorTime[4];
		public @property final auto ref float ExteriorLPF() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __ExteriorLPF[4];
		public @property final auto ref float ExteriorLPFTime() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __ExteriorLPFTime[4];
		public @property final auto ref float InteriorVolume() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __InteriorVolume[4];
		public @property final auto ref float InteriorTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __InteriorTime[4];
		public @property final auto ref float InteriorLPF() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __InteriorLPF[4];
		public @property final auto ref float InteriorLPFTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __InteriorLPFTime[4];
	}
	struct ReverbSettings
	{
		public @property final bool bApplyReverb() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bApplyReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bApplyReverb[4];
		public @property final auto ref ReverbVolume.ReverbPreset ReverbType() { return *cast(ReverbVolume.ReverbPreset*)(cast(size_t)&this + 4); }
		private ubyte __ReverbType[1];
		// WARNING: Property 'Volume' has the same name as a defined type!
		public @property final auto ref float FadeTime() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __FadeTime[4];
	}
	public @property final auto ref ReverbVolume NextLowerPriorityVolume() { return *cast(ReverbVolume*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref ReverbVolume.InteriorSettings AmbientZoneSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 544); }
	// WARNING: Property 'Settings' has the same name as a defined type!
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	public @property final auto ref float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
}
