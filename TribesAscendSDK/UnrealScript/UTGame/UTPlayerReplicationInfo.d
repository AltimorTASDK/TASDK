module UnrealScript.UTGame.UTPlayerReplicationInfo;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.Engine.Texture;

extern(C++) interface UTPlayerReplicationInfo : PlayerReplicationInfo
{
	struct IntStat
	{
		public @property final auto ref int StatValue() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __StatValue[4];
		public @property final auto ref ScriptName StatName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __StatName[8];
	}
	struct TimeStat
	{
		public @property final auto ref float CurrentStart() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __CurrentStart[4];
		public @property final auto ref float TotalTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __TotalTime[4];
		public @property final auto ref ScriptName StatName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __StatName[8];
	}
	public @property final auto ref ScriptClass CharClassInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 700); }
	public @property final bool bHasFlag() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
	public @property final bool bHasFlag(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
	public @property final auto ref ScriptClass VoiceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 676); }
	public @property final bool bIsFemale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x4) != 0; }
	public @property final bool bIsFemale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x4; } return val; }
	public @property final auto ref Texture CharPortrait() { return *cast(Texture*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref UTPlayerReplicationInfo LastKillerPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref int spree() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref UTSquadAI Squad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 668); }
	public @property final bool bHolding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
	public @property final bool bHolding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
	public @property final auto ref int MultiKillLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref float LastKillTime() { return *cast(float*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) KillStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) DeathStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) SuicideStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) EventStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) VehicleKillStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.IntStat) PickupStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.IntStat)*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.TimeStat) DrivingStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.TimeStat)*)(cast(size_t)cast(void*)this + 780); }
	public @property final auto ref ScriptArray!(UTPlayerReplicationInfo.TimeStat) PowerupTimeStats() { return *cast(ScriptArray!(UTPlayerReplicationInfo.TimeStat)*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref ubyte OrdersIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref ScriptString OrdersString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref Vector HUDLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref UObject.Color DefaultHudColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref UTCarriedObject HasFlag() { return *cast(UTCarriedObject*)(cast(size_t)cast(void*)this + 672); }
	final int IncrementEventStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37033], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39727], params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	final int IncrementPickupStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40625], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int IncrementVehicleKillStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44685], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int IncrementSuicideStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44688], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int IncrementKillStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44690], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int IncrementDeathStat(ScriptName NewStatName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44692], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final ScriptString GetCallSign()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[45337], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool IsLocalPlayerPRI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48782], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldBroadCastWelcomeMessage(bool bExiting)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bExiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48786], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void StartDrivingStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48805], params.ptr, cast(void*)0);
	}
	final void StopDrivingStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48810], params.ptr, cast(void*)0);
	}
	final void StartPowerupTimeStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48822], params.ptr, cast(void*)0);
	}
	final void StopPowerupTimeStat(ScriptName NewStatName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewStatName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48827], params.ptr, cast(void*)0);
	}
	final void SetFlag(UTCarriedObject NewFlag)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTCarriedObject*)params.ptr = NewFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48831], params.ptr, cast(void*)0);
	}
	final void IncrementKills(bool bEnemyKill)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnemyKill;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48833], params.ptr, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48835], cast(void*)0, cast(void*)0);
	}
	final void OverrideWith(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48836], params.ptr, cast(void*)0);
	}
	final void CopyProperties(PlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48839], params.ptr, cast(void*)0);
	}
	final void SeamlessTravelTo(PlayerReplicationInfo NewPRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = NewPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48842], params.ptr, cast(void*)0);
	}
	final bool AllowClientToTeleport(Actor DestinationActor, UTPawn* OwnerPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		*cast(UTPawn*)&params[4] = *OwnerPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48845], params.ptr, cast(void*)0);
		*OwnerPawn = *cast(UTPawn*)&params[4];
		return *cast(bool*)&params[8];
	}
	final void ServerTeleportToActor(Actor DestinationActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = DestinationActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48850], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48853], params.ptr, cast(void*)0);
	}
	final void ShowMidGameMenu(bool bInitial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInitial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48856], params.ptr, cast(void*)0);
	}
	final bool AttemptMidGameMenu()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48858], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
