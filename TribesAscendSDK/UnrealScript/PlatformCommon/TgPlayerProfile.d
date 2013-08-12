module UnrealScript.PlatformCommon.TgPlayerProfile;

import ScriptClasses;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface TgPlayerProfile : OnlinePlayerStorage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgPlayerProfile")); }
	struct BadgeStruct
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct PlatformCommon.TgPlayerProfile.BadgeStruct")); }
		@property final auto ref
		{
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 40); }
			ScriptString Title() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			int Category() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaxValue() { return *cast(int*)(cast(size_t)&this + 20); }
			int Progress() { return *cast(int*)(cast(size_t)&this + 16); }
			int Tier() { return *cast(int*)(cast(size_t)&this + 12); }
			int Icon() { return *cast(int*)(cast(size_t)&this + 8); }
			int ActivityId() { return *cast(int*)(cast(size_t)&this + 4); }
			int BadgeId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct PropertyPair
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct PlatformCommon.TgPlayerProfile.PropertyPair")); }
		@property final auto ref
		{
			int Value() { return *cast(int*)(cast(size_t)&this + 4); }
			int PropertyId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct AccoladeStruct
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct PlatformCommon.TgPlayerProfile.AccoladeStruct")); }
		@property final auto ref
		{
			int Value() { return *cast(int*)(cast(size_t)&this + 12); }
			int Type() { return *cast(int*)(cast(size_t)&this + 8); }
			int ActivityId() { return *cast(int*)(cast(size_t)&this + 4); }
			int AccoladeId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.BadgeStruct) Badges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 192); }
			ScriptArray!(TgPlayerProfile.BadgeStruct) TopBadges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 204); }
			ScriptArray!(TgPlayerProfile.PropertyPair) ClassTimePlayed() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 216); }
			ScriptArray!(TgPlayerProfile.AccoladeStruct) Accolades() { return *cast(ScriptArray!(TgPlayerProfile.AccoladeStruct)*)(cast(size_t)cast(void*)this + 228); }
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
			int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
			int ObjsDestroyed() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int GensDestroyed() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			int FlagCaps() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
			int FlagGrabs() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
			int FastestSki() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
			int TotalAccolades() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int TimePlayed() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int InfoMask() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int BoostHoursRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			int AverageScore() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			int AssistPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			int XPPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int HZPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			int XpLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
			int Assists() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
			int Rank() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		}
		bool bBoost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bVIP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bVIP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	}
}
