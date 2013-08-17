module UnrealScript.GameFramework.GameStatsAggregator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameStateObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameStatsAggregator : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameStatsAggregator")()); }
	private static __gshared GameStatsAggregator mDefaultProperties;
	@property final static GameStatsAggregator DefaultProperties() { mixin(MGDPC!(GameStatsAggregator, "GameStatsAggregator GameFramework.Default__GameStatsAggregator")()); }
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
			ScriptFunction PreProcessStream() { mixin(MGF!("mPreProcessStream", "Function GameFramework.GameStatsAggregator.PreProcessStream")()); }
			ScriptFunction PostProcessStream() { mixin(MGF!("mPostProcessStream", "Function GameFramework.GameStatsAggregator.PostProcessStream")()); }
			ScriptFunction GetAggregateMappingIDs() { mixin(MGF!("mGetAggregateMappingIDs", "Function GameFramework.GameStatsAggregator.GetAggregateMappingIDs")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.AggregateEventMapping")()); }
		@property final auto ref
		{
			int TargetAggregateID() { mixin(MGPS!(int, 8)()); }
			int AggregateID() { mixin(MGPS!(int, 4)()); }
			int EventID() { mixin(MGPS!(int, 0)()); }
		}
	}
	struct TeamEvents
	{
		private ubyte __buffer__[420];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.TeamEvents")()); }
		@property final auto ref
		{
			// WARNING: Property 'PawnEvents' has the same name as a defined type!
			// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
			GameStatsAggregator.DamageEvents DamageAsTargetEvents() { mixin(MGPS!(GameStatsAggregator.DamageEvents, 204)()); }
			GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { mixin(MGPS!(GameStatsAggregator.DamageEvents, 132)()); }
			// WARNING: Property 'WeaponEvents' has the same name as a defined type!
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct PlayerEvents
	{
		private ubyte __buffer__[420];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.PlayerEvents")()); }
		@property final auto ref
		{
			// WARNING: Property 'PawnEvents' has the same name as a defined type!
			// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
			GameStatsAggregator.DamageEvents DamageAsTargetEvents() { mixin(MGPS!(GameStatsAggregator.DamageEvents, 204)()); }
			GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { mixin(MGPS!(GameStatsAggregator.DamageEvents, 132)()); }
			// WARNING: Property 'WeaponEvents' has the same name as a defined type!
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct DamageEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.DamageEvents")()); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByDamageClass() { mixin(MGPS!(ScriptArray!(GameStatsAggregator.GameEvents), 60)()); }
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct PawnEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.PawnEvents")()); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByPawnClass() { mixin(MGPS!(ScriptArray!(GameStatsAggregator.GameEvents), 60)()); }
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct ProjectileEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.ProjectileEvents")()); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByProjectileClass() { mixin(MGPS!(ScriptArray!(GameStatsAggregator.GameEvents), 60)()); }
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct WeaponEvents
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.WeaponEvents")()); }
		@property final auto ref
		{
			ScriptArray!(GameStatsAggregator.GameEvents) EventsByWeaponClass() { mixin(MGPS!(ScriptArray!(GameStatsAggregator.GameEvents), 60)()); }
			GameStatsAggregator.GameEvents TotalEvents() { mixin(MGPS!(GameStatsAggregator.GameEvents, 0)()); }
		}
	}
	struct GameEvents
	{
		private ubyte __buffer__[60];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.GameEvents")()); }
		@property final auto ref UObject.Map_Mirror Events() { mixin(MGPS!(UObject.Map_Mirror, 0)()); }
	}
	struct GameEvent
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.GameStatsAggregator.GameEvent")()); }
		@property final auto ref ScriptArray!(float) EventCountByTimePeriod() { mixin(MGPS!(ScriptArray!(float), 0)()); }
	}
	@property final auto ref
	{
		ScriptArray!(GameStatsAggregator.AggregateEventMapping) AggregatesList() { mixin(MGPC!(ScriptArray!(GameStatsAggregator.AggregateEventMapping), 92)()); }
		ScriptArray!(GameplayEvents.GameplayEventMetaData) AggregateEvents() { mixin(MGPC!(ScriptArray!(GameplayEvents.GameplayEventMetaData), 164)()); }
		ScriptArray!(GameStatsAggregator.TeamEvents) AllTeamEvents() { mixin(MGPC!(ScriptArray!(GameStatsAggregator.TeamEvents), 236)()); }
		ScriptArray!(GameStatsAggregator.PlayerEvents) AllPlayerEvents() { mixin(MGPC!(ScriptArray!(GameStatsAggregator.PlayerEvents), 248)()); }
		GameStatsAggregator.DamageEvents AllDamageEvents() { mixin(MGPC!(GameStatsAggregator.DamageEvents, 476)()); }
		GameStatsAggregator.PawnEvents AllPawnEvents() { mixin(MGPC!(GameStatsAggregator.PawnEvents, 404)()); }
		GameStatsAggregator.ProjectileEvents AllProjectileEvents() { mixin(MGPC!(GameStatsAggregator.ProjectileEvents, 332)()); }
		GameStatsAggregator.WeaponEvents AllWeaponEvents() { mixin(MGPC!(GameStatsAggregator.WeaponEvents, 260)()); }
		GameStatsAggregator.GameEvents AllGameEvents() { mixin(MGPC!(GameStatsAggregator.GameEvents, 176)()); }
		UObject.Map_Mirror AggregateEventsMapping() { mixin(MGPC!(UObject.Map_Mirror, 104)()); }
		GameStateObject GameState() { mixin(MGPC!(GameStateObject, 88)()); }
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
	bool GetAggregateMappingIDs(int EventID, ref int AggregateID, ref int TargetAggregateID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = AggregateID;
		*cast(int*)&params[8] = TargetAggregateID;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAggregateMappingIDs, params.ptr, cast(void*)0);
		*AggregateID = *cast(int*)&params[4];
		*TargetAggregateID = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
}
