module UnrealScript.GameFramework.GameStatsAggregator;

import ScriptClasses;
import UnrealScript.GameFramework.GameStateObject;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameStatsAggregator : GameplayEventsHandler
{
	public static immutable auto GAMEEVENT_AGGREGATED_DATA = 10000;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_TIMEALIVE = 10001;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_KILLS = 10002;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_DEATHS = 10003;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_MATCH_WON = 10004;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_ROUND_WON = 10005;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_NORMALKILL = 10006;
	public static immutable auto GAMEEVENT_AGGREGATED_PLAYER_WASNORMALKILL = 10007;
	public static immutable auto GAMEEVENT_AGGREGATED_TEAM_KILLS = 10100;
	public static immutable auto GAMEEVENT_AGGREGATED_TEAM_DEATHS = 10101;
	public static immutable auto GAMEEVENT_AGGREGATED_TEAM_GAME_SCORE = 10102;
	public static immutable auto GAMEEVENT_AGGREGATED_TEAM_MATCH_WON = 10103;
	public static immutable auto GAMEEVENT_AGGREGATED_TEAM_ROUND_WON = 10104;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_KILLS = 10200;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_DEATHS = 10201;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_DEALT_WEAPON_DAMAGE = 10202;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_DEALT_MELEE_DAMAGE = 10203;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_RECEIVED_WEAPON_DAMAGE = 10204;
	public static immutable auto GAMEEVENT_AGGREGATED_DAMAGE_RECEIVED_MELEE_DAMAGE = 10205;
	public static immutable auto GAMEEVENT_AGGREGATED_WEAPON_FIRED = 10300;
	public static immutable auto GAMEEVENT_AGGREGATED_PAWN_SPAWN = 10400;
	public static immutable auto GAMEEVENT_AGGREGATED_GAME_SPECIFIC = 11000;
	struct AggregateEventMapping
	{
		public @property final auto ref int TargetAggregateID() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __TargetAggregateID[4];
		public @property final auto ref int AggregateID() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __AggregateID[4];
		public @property final auto ref int EventID() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EventID[4];
	}
	struct TeamEvents
	{
		// WARNING: Property 'PawnEvents' has the same name as a defined type!
		// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
		public @property final auto ref GameStatsAggregator.DamageEvents DamageAsTargetEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 204); }
		private ubyte __DamageAsTargetEvents[72];
		public @property final auto ref GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 132); }
		private ubyte __DamageAsPlayerEvents[72];
		// WARNING: Property 'WeaponEvents' has the same name as a defined type!
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct PlayerEvents
	{
		// WARNING: Property 'PawnEvents' has the same name as a defined type!
		// WARNING: Property 'ProjectileEvents' has the same name as a defined type!
		public @property final auto ref GameStatsAggregator.DamageEvents DamageAsTargetEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 204); }
		private ubyte __DamageAsTargetEvents[72];
		public @property final auto ref GameStatsAggregator.DamageEvents DamageAsPlayerEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)&this + 132); }
		private ubyte __DamageAsPlayerEvents[72];
		// WARNING: Property 'WeaponEvents' has the same name as a defined type!
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct DamageEvents
	{
		public @property final auto ref ScriptArray!(GameStatsAggregator.GameEvents) EventsByDamageClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
		private ubyte __EventsByDamageClass[12];
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct PawnEvents
	{
		public @property final auto ref ScriptArray!(GameStatsAggregator.GameEvents) EventsByPawnClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
		private ubyte __EventsByPawnClass[12];
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct ProjectileEvents
	{
		public @property final auto ref ScriptArray!(GameStatsAggregator.GameEvents) EventsByProjectileClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
		private ubyte __EventsByProjectileClass[12];
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct WeaponEvents
	{
		public @property final auto ref ScriptArray!(GameStatsAggregator.GameEvents) EventsByWeaponClass() { return *cast(ScriptArray!(GameStatsAggregator.GameEvents)*)(cast(size_t)&this + 60); }
		private ubyte __EventsByWeaponClass[12];
		public @property final auto ref GameStatsAggregator.GameEvents TotalEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)&this + 0); }
		private ubyte __TotalEvents[60];
	}
	struct GameEvents
	{
		public @property final auto ref UObject.Map_Mirror Events() { return *cast(UObject.Map_Mirror*)(cast(size_t)&this + 0); }
		private ubyte __Events[60];
	}
	struct GameEvent
	{
		public @property final auto ref ScriptArray!(float) EventCountByTimePeriod() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 0); }
		private ubyte __EventCountByTimePeriod[12];
	}
	public @property final auto ref ScriptArray!(GameStatsAggregator.AggregateEventMapping) AggregatesList() { return *cast(ScriptArray!(GameStatsAggregator.AggregateEventMapping)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptArray!(GameplayEvents.GameplayEventMetaData) AggregateEvents() { return *cast(ScriptArray!(GameplayEvents.GameplayEventMetaData)*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptArray!(GameStatsAggregator.TeamEvents) AllTeamEvents() { return *cast(ScriptArray!(GameStatsAggregator.TeamEvents)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptArray!(GameStatsAggregator.PlayerEvents) AllPlayerEvents() { return *cast(ScriptArray!(GameStatsAggregator.PlayerEvents)*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref GameStatsAggregator.DamageEvents AllDamageEvents() { return *cast(GameStatsAggregator.DamageEvents*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref GameStatsAggregator.PawnEvents AllPawnEvents() { return *cast(GameStatsAggregator.PawnEvents*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref GameStatsAggregator.ProjectileEvents AllProjectileEvents() { return *cast(GameStatsAggregator.ProjectileEvents*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref GameStatsAggregator.WeaponEvents AllWeaponEvents() { return *cast(GameStatsAggregator.WeaponEvents*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref GameStatsAggregator.GameEvents AllGameEvents() { return *cast(GameStatsAggregator.GameEvents*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref UObject.Map_Mirror AggregateEventsMapping() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref GameStateObject GameState() { return *cast(GameStateObject*)(cast(size_t)cast(void*)this + 88); }
	final void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32033], cast(void*)0, cast(void*)0);
	}
	final void PostProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32034], cast(void*)0, cast(void*)0);
	}
	final bool GetAggregateMappingIDs(int EventID, int* AggregateID, int* TargetAggregateID)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		*cast(int*)&params[4] = *AggregateID;
		*cast(int*)&params[8] = *TargetAggregateID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32035], params.ptr, cast(void*)0);
		*AggregateID = *cast(int*)&params[4];
		*TargetAggregateID = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
}
