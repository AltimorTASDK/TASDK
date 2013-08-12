module UnrealScript.GameFramework.GameStatsAggregator;

import ScriptClasses;
import UnrealScript.GameFramework.GameStateObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameStatsAggregator : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameStatsAggregator")); }
	private static __gshared GameStatsAggregator mDefaultProperties;
	@property final static GameStatsAggregator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameStatsAggregator)("GameStatsAggregator GameFramework.Default__GameStatsAggregator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreProcessStream;
			ScriptFunction mPostProcessStream;
			ScriptFunction mGetAggregateMappingIDs;
		}
		public @property static final
		{
			ScriptFunction PreProcessStream() { return mPreProcessStream ? mPreProcessStream : (mPreProcessStream = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameStatsAggregator.PreProcessStream")); }
			ScriptFunction PostProcessStream() { return mPostProcessStream ? mPostProcessStream : (mPostProcessStream = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameStatsAggregator.PostProcessStream")); }
			ScriptFunction GetAggregateMappingIDs() { return mGetAggregateMappingIDs ? mGetAggregateMappingIDs : (mGetAggregateMappingIDs = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameStatsAggregator.GetAggregateMappingIDs")); }
		}
	}
	static struct Constants
	{
		enum
		{
			GAMEEVENT_AGGREGATED_DATA = 10000,
			GAMEEVENT_AGGREGATED_PLAYER_TIMEALIVE = 10001,
			GAMEEVENT_AGGREGATED_PLAYER_KILLS = 10002,
			GAMEEVENT_AGGREGATED_PLAYER_DEATHS = 10003,
			GAMEEVENT_AGGREGATED_PLAYER_MATCH_WON = 10004,
			GAMEEVENT_AGGREGATED_PLAYER_ROUND_WON = 10005,
			GAMEEVENT_AGGREGATED_PLAYER_NORMALKILL = 10006,
			GAMEEVENT_AGGREGATED_PLAYER_WASNORMALKILL = 10007,
			GAMEEVENT_AGGREGATED_TEAM_KILLS = 10100,
			GAMEEVENT_AGGREGATED_TEAM_DEATHS = 10101,
			GAMEEVENT_AGGREGATED_TEAM_GAME_SCORE = 10102,
			GAMEEVENT_AGGREGATED_TEAM_MATCH_WON = 10103,
			GAMEEVENT_AGGREGATED_TEAM_ROUND_WON = 10104,
			GAMEEVENT_AGGREGATED_DAMAGE_KILLS = 10200,
			GAMEEVENT_AGGREGATED_DAMAGE_DEATHS = 10201,
			GAMEEVENT_AGGREGATED_DAMAGE_DEALT_WEAPON_DAMAGE = 10202,
			GAMEEVENT_AGGREGATED_DAMAGE_DEALT_MELEE_DAMAGE = 10203,
			GAMEEVENT_AGGREGATED_DAMAGE_RECEIVED_WEAPON_DAMAGE = 10204,
			GAMEEVENT_AGGREGATED_DAMAGE_RECEIVED_MELEE_DAMAGE = 10205,
			GAMEEVENT_AGGREGATED_WEAPON_FIRED = 10300,
			GAMEEVENT_AGGREGATED_PAWN_SPAWN = 10400,
			GAMEEVENT_AGGREGATED_GAME_SPECIFIC = 11000,
		}
	}
	struct AggregateEventMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.AggregateEventMapping")); }
		@property final auto ref
		{
			int TargetAggregateID() { return *cast(int*)(cast(size_t)&this + 8); }
			int AggregateID() { return *cast(int*)(cast(size_t)&this + 4); }
			int EventID() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct TeamEvents
	{
		private ubyte __buffer__[420];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.TeamEvents")); }
		@property final auto ref
		{
			// WARNING: Property 'PawnEvents' has the same name as a defined type!
			// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
			GameStatsAggregator.DamageEvents DamageAsTargetEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 204); }
			GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 132); }
			// WARNING: Property 'WeaponEvents' has the same name as a defined type!
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerEvents
	{
		private ubyte __buffer__[420];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.PlayerEvents")); }
		@property final auto ref
		{
			// WARNING: Property 'PawnEvents' has the same name as a defined type!
			// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
			GameStatsAggregator.DamageEvents DamageAsTargetEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 204); }
			GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 132); }
			// WARNING: Property 'WeaponEvents' has the same name as a defined type!
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct DamageEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.DamageEvents")); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByDamageClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct PawnEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.PawnEvents")); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByPawnClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct ProjectileEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.ProjectileEvents")); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByProjectileClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct WeaponEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.WeaponEvents")); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByWeaponClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
			GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		}
	}
	struct GameEvents
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.GameEvents")); }
		@property final auto ref UObject.Map_Mirror Events() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
	}
	struct GameEvent
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.GameStatsAggregator.GameEvent")); }
		@property final auto ref ScriptArray!(float) EventCountByTimePeriod() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 0); }
	}
	@property final auto ref
	{
		ScriptArray!(GameStatsAggregator.AggregateEventMapping) AggregatesList() { return *cast(ScriptArray!(GameStatsAggregator.AggregateEventMapping)*)(cast(size_t)cast(void*)this + 92); }
		ScriptArray!(GameplayEvents.GameplayEventMetaData) AggregateEvents() { return *cast(ScriptArray!(GameplayEvents.GameplayEventMetaData)*)(cast(size_t)cast(void*)this + 164); }
		ScriptArray!(GameStatsAggregator.TeamEvents) AllTeamEvents() { return *cast(ScriptArray!(GameStatsAggregator.TeamEvents)*)(cast(size_t)cast(void*)this + 236); }
		ScriptArray!(GameStatsAggregator.PlayerEvents) AllPlayerEvents() { return *cast(ScriptArray!(GameStatsAggregator.PlayerEvents)*)(cast(size_t)cast(void*)this + 248); }
		GameStatsAggregator.DamageEvents AllDamageEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)cast(void*)this + 476); }
		GameStatsAggregator.PawnEvents AllPawnEvents() { return *cast(GameStatsAggregator.PawnEvents*)(cast(size_t)cast(void*)this + 404); }
		GameStatsAggregator.ProjectileEvents AllProjectileEvents() { return *cast(GameStatsAggregator.ProjectileEvents*)(cast(size_t)cast(void*)this + 332); }
		GameStatsAggregator.WeaponEvents AllWeaponEvents() { return *cast(GameStatsAggregator.WeaponEvents*)(cast(size_t)cast(void*)this + 260); }
		GameStatsAggregator.GameEvents AllGameEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)cast(void*)this + 176); }
		UObject.Map_Mirror AggregateEventsMapping() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 104); }
		GameStateObject GameState() { return *cast(GameStateObject*)(cast(size_t)cast(void*)this + 88); }
	}
final:
	void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessStream, cast(void*)0, cast(void*)0);
	}
	void PostProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostProcessStream, cast(void*)0, cast(void*)0);
	}
	bool GetAggregateMappingIDs(int EventID, int* AggregateID, int* TargetAggregateID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = *AggregateID;
		*cast(int*)&params[8] = *TargetAggregateID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAggregateMappingIDs, params.ptr, cast(void*)0);
		*AggregateID = *cast(int*)&params[4];
		*TargetAggregateID = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
}
