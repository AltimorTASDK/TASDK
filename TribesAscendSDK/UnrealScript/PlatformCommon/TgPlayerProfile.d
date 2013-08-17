module UnrealScript.PlatformCommon.TgPlayerProfile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface TgPlayerProfile : OnlinePlayerStorage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class PlatformCommon.TgPlayerProfile")()); }
	private static __gshared TgPlayerProfile mDefaultProperties;
	@property final static TgPlayerProfile DefaultProperties() { mixin(MGDPC!(TgPlayerProfile, "TgPlayerProfile PlatformCommon.Default__TgPlayerProfile")()); }
	struct BadgeStruct
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct PlatformCommon.TgPlayerProfile.BadgeStruct")()); }
		@property final auto ref
		{
			ScriptString Description() { mixin(MGPS!("ScriptString", 40)()); }
			ScriptString Title() { mixin(MGPS!("ScriptString", 28)()); }
			int Category() { mixin(MGPS!("int", 24)()); }
			int MaxValue() { mixin(MGPS!("int", 20)()); }
			int Progress() { mixin(MGPS!("int", 16)()); }
			int Tier() { mixin(MGPS!("int", 12)()); }
			int Icon() { mixin(MGPS!("int", 8)()); }
			int ActivityId() { mixin(MGPS!("int", 4)()); }
			int BadgeId() { mixin(MGPS!("int", 0)()); }
		}
	}
	struct PropertyPair
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct PlatformCommon.TgPlayerProfile.PropertyPair")()); }
		@property final auto ref
		{
			int Value() { mixin(MGPS!("int", 4)()); }
			int PropertyId() { mixin(MGPS!("int", 0)()); }
		}
	}
	struct AccoladeStruct
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct PlatformCommon.TgPlayerProfile.AccoladeStruct")()); }
		@property final auto ref
		{
			int Value() { mixin(MGPS!("int", 12)()); }
			int Type() { mixin(MGPS!("int", 8)()); }
			int ActivityId() { mixin(MGPS!("int", 4)()); }
			int AccoladeId() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.BadgeStruct) Badges() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.BadgeStruct)", 192)()); }
			ScriptArray!(TgPlayerProfile.BadgeStruct) TopBadges() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.BadgeStruct)", 204)()); }
			ScriptArray!(TgPlayerProfile.PropertyPair) ClassTimePlayed() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.PropertyPair)", 216)()); }
			ScriptArray!(TgPlayerProfile.AccoladeStruct) Accolades() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.AccoladeStruct)", 228)()); }
			ScriptString PlayerName() { mixin(MGPC!("ScriptString", 180)()); }
			int PlayerID() { mixin(MGPC!("int", 176)()); }
			int ObjsDestroyed() { mixin(MGPC!("int", 168)()); }
			int GensDestroyed() { mixin(MGPC!("int", 164)()); }
			int FlagCaps() { mixin(MGPC!("int", 160)()); }
			int FlagGrabs() { mixin(MGPC!("int", 156)()); }
			int FastestSki() { mixin(MGPC!("int", 152)()); }
			int TotalAccolades() { mixin(MGPC!("int", 148)()); }
			int TimePlayed() { mixin(MGPC!("int", 144)()); }
			int InfoMask() { mixin(MGPC!("int", 140)()); }
			int BoostHoursRemaining() { mixin(MGPC!("int", 136)()); }
			int AverageScore() { mixin(MGPC!("int", 132)()); }
			int AssistPoints() { mixin(MGPC!("int", 128)()); }
			int XPPoints() { mixin(MGPC!("int", 124)()); }
			int HZPoints() { mixin(MGPC!("int", 120)()); }
			int XpLevel() { mixin(MGPC!("int", 116)()); }
			int Assists() { mixin(MGPC!("int", 112)()); }
			int Deaths() { mixin(MGPC!("int", 108)()); }
			int Kills() { mixin(MGPC!("int", 104)()); }
			int Rank() { mixin(MGPC!("int", 100)()); }
		}
		bool bBoost() { mixin(MGBPC!(172, 0x2)()); }
		bool bBoost(bool val) { mixin(MSBPC!(172, 0x2)()); }
		bool bVIP() { mixin(MGBPC!(172, 0x1)()); }
		bool bVIP(bool val) { mixin(MSBPC!(172, 0x1)()); }
	}
}
