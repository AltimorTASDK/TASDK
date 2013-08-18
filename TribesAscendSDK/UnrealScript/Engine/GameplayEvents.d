module UnrealScript.Engine.GameplayEvents;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface GameplayEvents : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GameplayEvents")); }
	private static __gshared GameplayEvents mDefaultProperties;
	@property final static GameplayEvents DefaultProperties() { mixin(MGDPC("GameplayEvents", "GameplayEvents Engine.Default__GameplayEvents")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenStatsFile;
			ScriptFunction mCloseStatsFile;
			ScriptFunction mGetFilename;
		}
		public @property static final
		{
			ScriptFunction OpenStatsFile() { mixin(MGF("mOpenStatsFile", "Function Engine.GameplayEvents.OpenStatsFile")); }
			ScriptFunction CloseStatsFile() { mixin(MGF("mCloseStatsFile", "Function Engine.GameplayEvents.CloseStatsFile")); }
			ScriptFunction GetFilename() { mixin(MGF("mGetFilename", "Function Engine.GameplayEvents.GetFilename")); }
		}
	}
	static struct Constants
	{
		enum HeaderFlags_NoEventStrings = 1;
	}
	enum EGameStatGroups : ubyte
	{
		GSG_EngineStats = 0,
		GSG_Game = 1,
		GSG_Team = 2,
		GSG_Player = 3,
		GSG_Weapon = 4,
		GSG_Damage = 5,
		GSG_Projectile = 6,
		GSG_Pawn = 7,
		GSG_GameSpecific = 8,
		GSG_Aggregate = 9,
		GSG_MAX = 10,
	}
	struct PlayerInformationNew
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.PlayerInformationNew")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 24)); }
				ScriptString PlayerName() { mixin(MGPS("ScriptString", 12)); }
				ScriptString ControllerName() { mixin(MGPS("ScriptString", 0)); }
			}
			bool bIsBot() { mixin(MGBPS(32, 0x1)); }
			bool bIsBot(bool val) { mixin(MSBPS(32, 0x1)); }
		}
	}
	struct TeamInformation
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.TeamInformation")); }
		@property final auto ref
		{
			int MaxSize() { mixin(MGPS("int", 20)); }
			UObject.Color TeamColor() { mixin(MGPS("UObject.Color", 16)); }
			ScriptString TeamName() { mixin(MGPS("ScriptString", 4)); }
			int TeamIndex() { mixin(MGPS("int", 0)); }
		}
	}
	struct GameplayEventMetaData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.GameplayEventMetaData")); }
		@property final auto ref
		{
			int EventDataType() { mixin(MGPS("int", 20)); }
			GameplayEvents.GameStatGroup StatGroup() { mixin(MGPS("GameplayEvents.GameStatGroup", 12)); }
			ScriptName EventName() { mixin(MGPS("ScriptName", 4)); }
			int EventID() { mixin(MGPS("int", 0)); }
		}
	}
	struct WeaponClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.WeaponClassEventData")); }
		@property final auto ref ScriptString WeaponClassName() { mixin(MGPS("ScriptString", 0)); }
	}
	struct DamageClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.DamageClassEventData")); }
		@property final auto ref ScriptString DamageClassName() { mixin(MGPS("ScriptString", 0)); }
	}
	struct ProjectileClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.ProjectileClassEventData")); }
		@property final auto ref ScriptString ProjectileClassName() { mixin(MGPS("ScriptString", 0)); }
	}
	struct PawnClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.PawnClassEventData")); }
		@property final auto ref ScriptString PawnClassName() { mixin(MGPS("ScriptString", 0)); }
	}
	struct GameStatGroup
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.GameStatGroup")); }
		@property final auto ref
		{
			// WARNING: Property 'Level' has the same name as a defined type!
			GameplayEvents.EGameStatGroups Group() { mixin(MGPS("GameplayEvents.EGameStatGroups", 0)); }
		}
	}
	struct GameplayEventsHeader
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.GameplayEventsHeader")); }
		@property final auto ref
		{
			int Flags() { mixin(MGPS("int", 40)); }
			ScriptString FilterClass() { mixin(MGPS("ScriptString", 28)); }
			int FileSize() { mixin(MGPS("int", 24)); }
			int TotalStreamSize() { mixin(MGPS("int", 20)); }
			int FooterOffset() { mixin(MGPS("int", 16)); }
			int AggregateOffset() { mixin(MGPS("int", 12)); }
			int StreamOffset() { mixin(MGPS("int", 8)); }
			int StatsWriterVersion() { mixin(MGPS("int", 4)); }
			int EngineVersion() { mixin(MGPS("int", 0)); }
		}
	}
	struct GameSessionInformation
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameplayEvents.GameSessionInformation")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId OwningNetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 100)); }
				int GameTypeId() { mixin(MGPS("int", 96)); }
				int SessionInstance() { mixin(MGPS("int", 92)); }
				ScriptString MapURL() { mixin(MGPS("ScriptString", 80)); }
				ScriptString MapName() { mixin(MGPS("ScriptString", 68)); }
				ScriptString GameClassName() { mixin(MGPS("ScriptString", 56)); }
				ScriptString GameplaySessionID() { mixin(MGPS("ScriptString", 44)); }
				float GameplaySessionEndTime() { mixin(MGPS("float", 36)); }
				float GameplaySessionStartTime() { mixin(MGPS("float", 32)); }
				ScriptString GameplaySessionTimestamp() { mixin(MGPS("ScriptString", 20)); }
				ScriptString Language() { mixin(MGPS("ScriptString", 8)); }
				int PlatformType() { mixin(MGPS("int", 4)); }
				int AppTitleID() { mixin(MGPS("int", 0)); }
			}
			bool bGameplaySessionInProgress() { mixin(MGBPS(40, 0x1)); }
			bool bGameplaySessionInProgress(bool val) { mixin(MSBPS(40, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GameplayEvents.PlayerInformationNew) PlayerList() { mixin(MGPC("ScriptArray!(GameplayEvents.PlayerInformationNew)", 228)); }
		ScriptArray!(GameplayEvents.TeamInformation) TeamList() { mixin(MGPC("ScriptArray!(GameplayEvents.TeamInformation)", 240)); }
		ScriptArray!(GameplayEvents.GameplayEventMetaData) SupportedEvents() { mixin(MGPC("ScriptArray!(GameplayEvents.GameplayEventMetaData)", 252)); }
		ScriptArray!(GameplayEvents.WeaponClassEventData) WeaponClassArray() { mixin(MGPC("ScriptArray!(GameplayEvents.WeaponClassEventData)", 264)); }
		ScriptArray!(GameplayEvents.DamageClassEventData) DamageClassArray() { mixin(MGPC("ScriptArray!(GameplayEvents.DamageClassEventData)", 276)); }
		ScriptArray!(GameplayEvents.ProjectileClassEventData) ProjectileClassArray() { mixin(MGPC("ScriptArray!(GameplayEvents.ProjectileClassEventData)", 288)); }
		ScriptArray!(GameplayEvents.PawnClassEventData) PawnClassArray() { mixin(MGPC("ScriptArray!(GameplayEvents.PawnClassEventData)", 300)); }
		ScriptArray!(ScriptString) ActorArray() { mixin(MGPC("ScriptArray!(ScriptString)", 312)); }
		ScriptArray!(ScriptString) SoundCueArray() { mixin(MGPC("ScriptArray!(ScriptString)", 324)); }
		GameplayEvents.GameSessionInformation CurrentSessionInfo() { mixin(MGPC("GameplayEvents.GameSessionInformation", 120)); }
		GameplayEvents.GameplayEventsHeader Header() { mixin(MGPC("GameplayEvents.GameplayEventsHeader", 76)); }
		ScriptString StatsFileName() { mixin(MGPC("ScriptString", 64)); }
		Pointer Archive() { mixin(MGPC("Pointer", 60)); }
	}
final:
	bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenStatsFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseStatsFile, cast(void*)0, cast(void*)0);
	}
	ScriptString GetFilename()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFilename, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
