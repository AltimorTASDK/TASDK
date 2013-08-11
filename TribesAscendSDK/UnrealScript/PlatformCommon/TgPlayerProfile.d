module UnrealScript.PlatformCommon.TgPlayerProfile;

import ScriptClasses;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface TgPlayerProfile : OnlinePlayerStorage
{
	struct BadgeStruct
	{
		public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 40); }
		private ubyte __Description[12];
		public @property final auto ref ScriptString Title() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __Title[12];
		public @property final auto ref int Category() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __Category[4];
		public @property final auto ref int MaxValue() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaxValue[4];
		public @property final auto ref int Progress() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Progress[4];
		public @property final auto ref int Tier() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Tier[4];
		public @property final auto ref int Icon() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Icon[4];
		public @property final auto ref int ActivityId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ActivityId[4];
		public @property final auto ref int BadgeId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __BadgeId[4];
	}
	struct PropertyPair
	{
		public @property final auto ref int Value() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Value[4];
		public @property final auto ref int PropertyId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PropertyId[4];
	}
	struct AccoladeStruct
	{
		public @property final auto ref int Value() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Value[4];
		public @property final auto ref int Type() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Type[4];
		public @property final auto ref int ActivityId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ActivityId[4];
		public @property final auto ref int AccoladeId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __AccoladeId[4];
	}
	public @property final auto ref ScriptArray!(TgPlayerProfile.BadgeStruct) Badges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptArray!(TgPlayerProfile.BadgeStruct) TopBadges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptArray!(TgPlayerProfile.PropertyPair) ClassTimePlayed() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(TgPlayerProfile.AccoladeStruct) Accolades() { return *cast(ScriptArray!(TgPlayerProfile.AccoladeStruct)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	public @property final bool bBoost() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
	public @property final bool bBoost(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
	public @property final bool bVIP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
	public @property final bool bVIP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	public @property final auto ref int ObjsDestroyed() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int GensDestroyed() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int FlagCaps() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int FlagGrabs() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int FastestSki() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int TotalAccolades() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int TimePlayed() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int InfoMask() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int BoostHoursRemaining() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int AverageScore() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref int AssistPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref int XPPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int HZPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int XpLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int Assists() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref int Rank() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
}
