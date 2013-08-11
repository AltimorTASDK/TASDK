module UnrealScript.UTGame.UTCTFSquadAI;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UTGame.UTCTFFlag;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UDKBase.UDKSquadAI;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTCTFSquadAI : UTSquadAI
{
	public @property final auto ref UTCTFFlag EnemyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref UTCTFFlag FriendlyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref ScriptArray!(UDKSquadAI.AlternateRoute) EnemyFlagRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref ScriptArray!(UDKSquadAI.AlternateRoute) FriendlyFlagRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref NavigationPoint HidePath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref float LastSeeFlagCarrier() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46551], cast(void*)0, cast(void*)0);
	}
	final bool AllowDetourTo(UTBot B, NavigationPoint N)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(NavigationPoint*)&params[4] = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46552], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool ShouldUseAlternatePaths()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46556], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetAlternatePathTo(NavigationPoint NewRouteObjective, UTBot RouteMaker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewRouteObjective;
		*cast(UTBot*)&params[4] = RouteMaker;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46558], params.ptr, cast(void*)0);
	}
	final bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46562], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FindPathToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46565], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GoPickupFlag(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46569], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor FormationCenter(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46574], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final bool VisibleToEnemiesOf(Actor A, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46577], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final NavigationPoint FindHidePathFor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46581], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	final bool CheckVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46585], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OrdersForFlagCarrier(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46588], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool MustKeepEnemy(Pawn E)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46592], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NearEnemyBase(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46595], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NearHomeBase(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46598], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool FlagNearBase()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46601], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool OverrideFollowPlayer(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46603], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckSquadObjectives(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46606], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void EnemyFlagTakenBy(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46612], params.ptr, cast(void*)0);
	}
	final bool AllowTaunt(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46615], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46618], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ubyte PriorityObjective(UTBot B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46621], params.ptr, cast(void*)0);
		return params[4];
	}
	final float ModifyThreat(float Current, Pawn NewThreat, bool bThreatVisible, UTBot B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		*cast(UTBot*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46624], params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	final bool AllowContinueOnFoot(UTBot B, UTVehicle V)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(UTVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46630], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void ModifyAggression(UTBot B, float* Aggression)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = *Aggression;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46634], params.ptr, cast(void*)0);
		*Aggression = *cast(float*)&params[4];
	}
}
