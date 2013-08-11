module UnrealScript.Engine.Mutator;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Vehicle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface Mutator : Info
{
	public @property final auto ref ScriptArray!(ScriptString) GroupNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref Mutator NextMutator() { return *cast(Mutator*)(cast(size_t)cast(void*)this + 476); }
	public @property final bool bUserAdded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bUserAdded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	final bool PreventDeath(Pawn Killed, Controller Killer, ScriptClass DamageType, Vector HitLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = Killed;
		*cast(Controller*)&params[4] = Killer;
		*cast(ScriptClass*)&params[8] = DamageType;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17066], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool CheckRelevance(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17091], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool OverridePickupQuery(Pawn Other, ScriptClass ItemClass, Actor Pickup, ubyte* bAllowPickup)
	{
		ubyte params[17];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(ScriptClass*)&params[4] = ItemClass;
		*cast(Actor*)&params[8] = Pickup;
		params[12] = *bAllowPickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17100], params.ptr, cast(void*)0);
		*bAllowPickup = params[12];
		return *cast(bool*)&params[16];
	}
	final bool HandleRestartGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17132], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17164], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final NavigationPoint FindPlayerStart(Controller Player, ubyte InTeam, ScriptString IncomingName)
	{
		ubyte params[21];
		params[] = 0;
		*cast(Controller*)params.ptr = Player;
		params[4] = InTeam;
		*cast(ScriptString*)&params[8] = IncomingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17202], params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	final bool CanLeaveVehicle(Vehicle V, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17246], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20673], cast(void*)0, cast(void*)0);
	}
	final bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20674], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20676], cast(void*)0, cast(void*)0);
	}
	final void Mutate(ScriptString MutateString, PlayerController Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutateString;
		*cast(PlayerController*)&params[12] = Sender;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20677], params.ptr, cast(void*)0);
	}
	final void ModifyLogin(ScriptString* Portal, ScriptString* Options)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Portal;
		*cast(ScriptString*)&params[12] = *Options;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20680], params.ptr, cast(void*)0);
		*Portal = *cast(ScriptString*)params.ptr;
		*Options = *cast(ScriptString*)&params[12];
	}
	final void ModifyPlayer(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20683], params.ptr, cast(void*)0);
	}
	final void AddMutator(Mutator M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Mutator*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20685], params.ptr, cast(void*)0);
	}
	final bool AlwaysKeep(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20687], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsRelevant(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20690], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20696], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void NotifyLogout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20699], params.ptr, cast(void*)0);
	}
	final void NotifyLogin(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20701], params.ptr, cast(void*)0);
	}
	final void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20703], params.ptr, cast(void*)0);
	}
	final void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20708], params.ptr, cast(void*)0);
	}
	final void InitMutator(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20711], params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	final void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20714], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	final void ScoreObjective(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20731], params.ptr, cast(void*)0);
	}
	final void ScoreKill(Controller Killer, Controller Killed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20734], params.ptr, cast(void*)0);
	}
	final void NetDamage(int OriginalDamage, int* Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass DamageType, Actor DamageCauser)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = OriginalDamage;
		*cast(int*)&params[4] = *Damage;
		*cast(Pawn*)&params[8] = injured;
		*cast(Controller*)&params[12] = InstigatedBy;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Vector*)&params[28] = *Momentum;
		*cast(ScriptClass*)&params[40] = DamageType;
		*cast(Actor*)&params[44] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20737], params.ptr, cast(void*)0);
		*Damage = *cast(int*)&params[4];
		*Momentum = *cast(Vector*)&params[28];
	}
}
