module UnrealScript.Engine.GameplayEvents;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface GameplayEvents : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameplayEvents")); }
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
			ScriptFunction OpenStatsFile() { return mOpenStatsFile ? mOpenStatsFile : (mOpenStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEvents.OpenStatsFile")); }
			ScriptFunction CloseStatsFile() { return mCloseStatsFile ? mCloseStatsFile : (mCloseStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEvents.CloseStatsFile")); }
			ScriptFunction GetFilename() { return mGetFilename ? mGetFilename : (mGetFilename = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEvents.GetFilename")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.PlayerInformationNew")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 24); }
				ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
				ScriptString ControllerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bIsBot() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bIsBot(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	struct TeamInformation
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.TeamInformation")); }
		@property final auto ref
		{
			int MaxSize() { return *cast(int*)(cast(size_t)&this + 20); }
			UObject.Color TeamColor() { return *cast(UObject.Color*)(cast(size_t)&this + 16); }
			ScriptString TeamName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			int TeamIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct GameplayEventMetaData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.GameplayEventMetaData")); }
		@property final auto ref
		{
			int EventDataType() { return *cast(int*)(cast(size_t)&this + 20); }
			GameplayEvents.GameStatGroup StatGroup() { return *cast(GameplayEvents.GameStatGroup*)(cast(size_t)&this + 12); }
			ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			int EventID() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct WeaponClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.WeaponClassEventData")); }
		@property final auto ref ScriptString WeaponClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
	}
	struct DamageClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.DamageClassEventData")); }
		@property final auto ref ScriptString DamageClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
	}
	struct ProjectileClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.ProjectileClassEventData")); }
		@property final auto ref ScriptString ProjectileClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
	}
	struct PawnClassEventData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.PawnClassEventData")); }
		@property final auto ref ScriptString PawnClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
	}
	struct GameStatGroup
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.GameStatGroup")); }
		@property final auto ref
		{
			// WARNING: Property 'Level' has the same name as a defined type!
			GameplayEvents.EGameStatGroups Group() { return *cast(GameplayEvents.EGameStatGroups*)(cast(size_t)&this + 0); }
		}
	}
	struct GameplayEventsHeader
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.GameplayEventsHeader")); }
		@property final auto ref
		{
			int Flags() { return *cast(int*)(cast(size_t)&this + 40); }
			ScriptString FilterClass() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			int FileSize() { return *cast(int*)(cast(size_t)&this + 24); }
			int TotalStreamSize() { return *cast(int*)(cast(size_t)&this + 20); }
			int FooterOffset() { return *cast(int*)(cast(size_t)&this + 16); }
			int AggregateOffset() { return *cast(int*)(cast(size_t)&this + 12); }
			int StreamOffset() { return *cast(int*)(cast(size_t)&this + 8); }
			int StatsWriterVersion() { return *cast(int*)(cast(size_t)&this + 4); }
			int EngineVersion() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct GameSessionInformation
	{
		private ubyte __buffer__[108];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameplayEvents.GameSessionInformation")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId OwningNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 100); }
				int GameTypeId() { return *cast(int*)(cast(size_t)&this + 96); }
				int SessionInstance() { return *cast(int*)(cast(size_t)&this + 92); }
				ScriptString MapURL() { return *cast(ScriptString*)(cast(size_t)&this + 80); }
				ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 68); }
				ScriptString GameClassName() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
				ScriptString GameplaySessionID() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
				float GameplaySessionEndTime() { return *cast(float*)(cast(size_t)&this + 36); }
				float GameplaySessionStartTime() { return *cast(float*)(cast(size_t)&this + 32); }
				ScriptString GameplaySessionTimestamp() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
				ScriptString Language() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
				int PlatformType() { return *cast(int*)(cast(size_t)&this + 4); }
				int AppTitleID() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bGameplaySessionInProgress() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool bGameplaySessionInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GameplayEvents.PlayerInformationNew) PlayerList() { return *cast(ScriptArray!(GameplayEvents.PlayerInformationNew)*)(cast(size_t)cast(void*)this + 228); }
		ScriptArray!(GameplayEvents.TeamInformation) TeamList() { return *cast(ScriptArray!(GameplayEvents.TeamInformation)*)(cast(size_t)cast(void*)this + 240); }
		ScriptArray!(GameplayEvents.GameplayEventMetaData) SupportedEvents() { return *cast(ScriptArray!(GameplayEvents.GameplayEventMetaData)*)(cast(size_t)cast(void*)this + 252); }
		ScriptArray!(GameplayEvents.WeaponClassEventData) WeaponClassArray() { return *cast(ScriptArray!(GameplayEvents.WeaponClassEventData)*)(cast(size_t)cast(void*)this + 264); }
		ScriptArray!(GameplayEvents.DamageClassEventData) DamageClassArray() { return *cast(ScriptArray!(GameplayEvents.DamageClassEventData)*)(cast(size_t)cast(void*)this + 276); }
		ScriptArray!(GameplayEvents.ProjectileClassEventData) ProjectileClassArray() { return *cast(ScriptArray!(GameplayEvents.ProjectileClassEventData)*)(cast(size_t)cast(void*)this + 288); }
		ScriptArray!(GameplayEvents.PawnClassEventData) PawnClassArray() { return *cast(ScriptArray!(GameplayEvents.PawnClassEventData)*)(cast(size_t)cast(void*)this + 300); }
		ScriptArray!(ScriptString) ActorArray() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 312); }
		ScriptArray!(ScriptString) SoundCueArray() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 324); }
		GameplayEvents.GameSessionInformation CurrentSessionInfo() { return *cast(GameplayEvents.GameSessionInformation*)(cast(size_t)cast(void*)this + 120); }
		GameplayEvents.GameplayEventsHeader Header() { return *cast(GameplayEvents.GameplayEventsHeader*)(cast(size_t)cast(void*)this + 76); }
		ScriptString StatsFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
		UObject.Pointer Archive() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
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
