module UnrealScript.Engine.ReverbVolume;

import UnrealScript.Engine.Volume;

extern(C++) interface ReverbVolume : Volume
{
public extern(D):
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
		private ubyte __buffer__[36];
	public extern(D):
		@property final
		{
			auto ref
			{
				float ExteriorVolume() { return *cast(float*)(cast(size_t)&this + 4); }
				float ExteriorTime() { return *cast(float*)(cast(size_t)&this + 8); }
				float ExteriorLPF() { return *cast(float*)(cast(size_t)&this + 12); }
				float ExteriorLPFTime() { return *cast(float*)(cast(size_t)&this + 16); }
				float InteriorVolume() { return *cast(float*)(cast(size_t)&this + 20); }
				float InteriorTime() { return *cast(float*)(cast(size_t)&this + 24); }
				float InteriorLPF() { return *cast(float*)(cast(size_t)&this + 28); }
				float InteriorLPFTime() { return *cast(float*)(cast(size_t)&this + 32); }
			}
			bool bIsWorldInfo() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bIsWorldInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct ReverbSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				ReverbVolume.ReverbPreset ReverbType() { return *cast(ReverbVolume.ReverbPreset*)(cast(size_t)&this + 4); }
				// WARNING: Property 'Volume' has the same name as a defined type!
				float FadeTime() { return *cast(float*)(cast(size_t)&this + 12); }
			}
			bool bApplyReverb() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bApplyReverb(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ReverbVolume NextLowerPriorityVolume() { return *cast(ReverbVolume*)(cast(size_t)cast(void*)this + 580); }
			ReverbVolume.InteriorSettings AmbientZoneSettings() { return *cast(ReverbVolume.InteriorSettings*)(cast(size_t)cast(void*)this + 544); }
			// WARNING: Property 'Settings' has the same name as a defined type!
			float Priority() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 524) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 524) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 524) &= ~0x1; } return val; }
	}
}
