module UnrealScript.Engine.ReverbVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface ReverbVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ReverbVolume")()); }
	private static __gshared ReverbVolume mDefaultProperties;
	@property final static ReverbVolume DefaultProperties() { mixin(MGDPC!(ReverbVolume, "ReverbVolume Engine.Default__ReverbVolume")()); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ReverbVolume.InteriorSettings")()); }
		@property final
		{
			auto ref
			{
				float ExteriorVolume() { mixin(MGPS!(float, 4)()); }
				float ExteriorTime() { mixin(MGPS!(float, 8)()); }
				float ExteriorLPF() { mixin(MGPS!(float, 12)()); }
				float ExteriorLPFTime() { mixin(MGPS!(float, 16)()); }
				float InteriorVolume() { mixin(MGPS!(float, 20)()); }
				float InteriorTime() { mixin(MGPS!(float, 24)()); }
				float InteriorLPF() { mixin(MGPS!(float, 28)()); }
				float InteriorLPFTime() { mixin(MGPS!(float, 32)()); }
			}
			bool bIsWorldInfo() { mixin(MGBPS!(0, 0x1)()); }
			bool bIsWorldInfo(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct ReverbSettings
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ReverbVolume.ReverbSettings")()); }
		@property final
		{
			auto ref
			{
				ReverbVolume.ReverbPreset ReverbType() { mixin(MGPS!(ReverbVolume.ReverbPreset, 4)()); }
				// WARNING: Property 'Volume' has the same name as a defined type!
				float FadeTime() { mixin(MGPS!(float, 12)()); }
			}
			bool bApplyReverb() { mixin(MGBPS!(0, 0x1)()); }
			bool bApplyReverb(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ReverbVolume NextLowerPriorityVolume() { mixin(MGPC!(ReverbVolume, 580)()); }
			ReverbVolume.InteriorSettings AmbientZoneSettings() { mixin(MGPC!(ReverbVolume.InteriorSettings, 544)()); }
			// WARNING: Property 'Settings' has the same name as a defined type!
			float Priority() { mixin(MGPC!(float, 520)()); }
		}
		bool bEnabled() { mixin(MGBPC!(524, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(524, 0x1)()); }
	}
}
