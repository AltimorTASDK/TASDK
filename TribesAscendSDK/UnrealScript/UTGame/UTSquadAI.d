module UnrealScript.UTGame.UTSquadAI;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKSquadAI;
import UnrealScript.UTGame.UTBot;
import UnrealScript.UTGame.UTTeamInfo;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.HUD;

extern(C++) interface UTSquadAI : UDKSquadAI
{
	public static immutable auto NEAROBJECTIVEDIST = 2000.0;
	public @property final auto ref Controller SquadLeader() { return *cast(Controller*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref UTBot SquadMembers() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float FormationSize() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
	public @property final bool bShouldUseGatherPoints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x20) != 0; }
	public @property final bool bShouldUseGatherPoints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x20; } return val; }
	public @property final bool bAddTransientCosts() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x10) != 0; }
	public @property final bool bAddTransientCosts(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x10; } return val; }
	public @property final bool bRoamingSquad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x8) != 0; }
	public @property final bool bRoamingSquad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x8; } return val; }
	public @property final bool bFreelanceDefend() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x4) != 0; }
	public @property final bool bFreelanceDefend(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x4; } return val; }
	public @property final bool bFreelanceAttack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x2) != 0; }
	public @property final bool bFreelanceAttack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x2; } return val; }
	public @property final bool bFreelance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 672) & 0x1) != 0; }
	public @property final bool bFreelance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 672) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 672) &= ~0x1; } return val; }
	public @property final auto ref int MaxSquadSize() { return *cast(int*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref Pawn Enemies() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref ScriptName CurrentOrders() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref ScriptString SupportStringTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref ScriptString FreelanceString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref ScriptString HoldString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref ScriptString AttackString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref ScriptString DefendString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptString SupportString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref int Size() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref UTSquadAI NextSquad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref UTPlayerReplicationInfo LeaderPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 540); }
	final bool AllowContinueOnFoot(UTBot B, UTVehicle V)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(UTVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39422], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AllowImpactJumpBy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42587], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42656], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final bool SetEnemy(UTBot B, Pawn NewEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42679], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AssignSquadResponsibility(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42706], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FindNewEnemyFor(UTBot B, bool bSeeEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(bool*)&params[4] = bSeeEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42774], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool MustKeepEnemy(Pawn E)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42776], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsDefending(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42778], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasOtherVisibleEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42799], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ubyte PriorityObjective(UTBot B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42808], params.ptr, cast(void*)0);
		return params[4];
	}
	final bool AllowDetourTo(UTBot B, NavigationPoint N)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(NavigationPoint*)&params[4] = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42875], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final Actor SetFacingActor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43026], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final Actor FormationCenter(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43080], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final bool AcceptableDefensivePosition(NavigationPoint N, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43086], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final NavigationPoint FindDefensivePositionFor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43088], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	final bool ClearPathFor(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43119], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool LostEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43159], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool PickRetreatDestination(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43165], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43314], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShouldSuppressEnemy(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43367], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float VehicleDesireability(UTVehicle V, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43551], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final bool HandlePathObstruction(UTBot B, Actor BlockedBy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43553], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool FindPathToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44423], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int GetSize()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44427], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46165], cast(void*)0, cast(void*)0);
	}
	final void CriticalObjectiveWarning(Pawn NewEnemy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46167], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46173], cast(void*)0, cast(void*)0);
	}
	final UTVehicle GetLinkVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46176], params.ptr, cast(void*)0);
		return *cast(UTVehicle*)&params[4];
	}
	final Rotator GetFacingRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46180], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final bool AddEnemy(Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46189], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ValidEnemy(Pawn NewEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46195], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsOnSquad(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46203], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RemoveEnemy(Pawn E)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46206], params.ptr, cast(void*)0);
	}
	final void NotifyKilled(Controller Killer, Controller Killed, Pawn KilledPawn, ScriptClass DamageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		*cast(Pawn*)&params[8] = KilledPawn;
		*cast(ScriptClass*)&params[12] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46210], params.ptr, cast(void*)0);
	}
	final float ModifyThreat(float Current, Pawn NewThreat, bool bThreatVisible, UTBot B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		*cast(UTBot*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46225], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final bool UnderFire(Pawn NewThreat, UTBot Ignored)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewThreat;
		*cast(UTBot*)&params[4] = Ignored;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46231], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final float AssessThreat(UTBot B, Pawn NewThreat, bool bThreatVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46236], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46244], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool WaitAtThisPosition(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46247], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool WanderNearLeader(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46250], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NearFormationCenter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46253], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CloseToLeader(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46257], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void MergeWith(UTSquadAI S)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46261], params.ptr, cast(void*)0);
	}
	final void Initialize(UTTeamInfo T, UTGameObjective O, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTTeamInfo*)params.ptr = T;
		*cast(UTGameObjective*)&params[4] = O;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46263], params.ptr, cast(void*)0);
	}
	final bool ShouldUseAlternatePaths()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46267], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetAlternatePathTo(NavigationPoint NewRouteObjective, UTBot RouteMaker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewRouteObjective;
		*cast(UTBot*)&params[4] = RouteMaker;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46269], params.ptr, cast(void*)0);
	}
	final bool TryToIntercept(UTBot B, Pawn P, Actor RouteGoal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = P;
		*cast(Actor*)&params[8] = RouteGoal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46273], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool CloseEnoughToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46278], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool LeaveVehicleToReachObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46282], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool MustCompleteOnFoot(Actor O, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = O;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46287], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void LeaveVehicleAtParkingSpot(UTBot B, Actor O)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46292], params.ptr, cast(void*)0);
	}
	final void SetLeader(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46305], params.ptr, cast(void*)0);
	}
	final void RemovePlayer(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46307], params.ptr, cast(void*)0);
	}
	final void RemoveBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46312], params.ptr, cast(void*)0);
	}
	final void AddBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46315], params.ptr, cast(void*)0);
	}
	final void SetDefenseScriptFor(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46318], params.ptr, cast(void*)0);
	}
	final void SetObjective(UTGameObjective O, bool bForceUpdate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = O;
		*cast(bool*)&params[4] = bForceUpdate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46336], params.ptr, cast(void*)0);
	}
	final void Retask(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46341], params.ptr, cast(void*)0);
	}
	final ScriptString GetOrderStringFor(UTPlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46349], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString GetShortOrderStringFor(UTPlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46353], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void PickNewLeader()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46356], cast(void*)0, cast(void*)0);
	}
	final bool TellBotToFollow(UTBot B, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46358], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AllowTaunt(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46368], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddTransientCosts(UTBot B, float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46371], params.ptr, cast(void*)0);
	}
	final float MaxVehicleDist(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46376], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final bool NeverBail(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46386], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void BotEnteredVehicle(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46389], params.ptr, cast(void*)0);
	}
	final bool IsOnPathToSquadObjective(Actor Goal)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Goal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46391], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetOnHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46396], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool EnterAndExitVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46400], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GotoVehicle(UTVehicle SquadVehicle, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = SquadVehicle;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46404], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool CheckVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46410], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46427], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShouldUseHoverboard(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46431], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OverrideFollowPlayer(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46438], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShouldCheckSuperVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46443], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckSuperItem(UTBot B, float SuperDist)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = SuperDist;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46447], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool CheckSquadObjectives(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46464], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float BotSuitability(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46475], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final UTBot PickBotToReassign()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46478], params.ptr, cast(void*)0);
		return *cast(UTBot*)params.ptr;
	}
	final void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46486], params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	final bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46500], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final float GetMaxDefenseDistanceFrom(Actor Center, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Center;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46506], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final float RateDefensivePosition(NavigationPoint N, UTBot CurrentBot, Actor Center)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = N;
		*cast(UTBot*)&params[4] = CurrentBot;
		*cast(Actor*)&params[8] = Center;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46517], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final void MarkHuntingSpots(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46536], params.ptr, cast(void*)0);
	}
	final void ModifyAggression(UTBot B, float* Aggression)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = *Aggression;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46538], params.ptr, cast(void*)0);
		*Aggression = *cast(float*)&params[4];
	}
}
