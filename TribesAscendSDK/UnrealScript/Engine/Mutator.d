module UnrealScript.Engine.Mutator;

import ScriptClasses;
import UnrealScript.Helpers;
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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Mutator")); }
	private static __gshared Mutator mDefaultProperties;
	@property final static Mutator DefaultProperties() { mixin(MGDPC("Mutator", "Mutator Engine.Default__Mutator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreventDeath;
			ScriptFunction mCheckRelevance;
			ScriptFunction mOverridePickupQuery;
			ScriptFunction mHandleRestartGame;
			ScriptFunction mCheckEndGame;
			ScriptFunction mFindPlayerStart;
			ScriptFunction mCanLeaveVehicle;
			ScriptFunction mPreBeginPlay;
			ScriptFunction mMutatorIsAllowed;
			ScriptFunction mDestroyed;
			ScriptFunction mMutate;
			ScriptFunction mModifyLogin;
			ScriptFunction mModifyPlayer;
			ScriptFunction mAddMutator;
			ScriptFunction mAlwaysKeep;
			ScriptFunction mIsRelevant;
			ScriptFunction mCheckReplacement;
			ScriptFunction mNotifyLogout;
			ScriptFunction mNotifyLogin;
			ScriptFunction mDriverEnteredVehicle;
			ScriptFunction mDriverLeftVehicle;
			ScriptFunction mInitMutator;
			ScriptFunction mGetSeamlessTravelActorList;
			ScriptFunction mScoreObjective;
			ScriptFunction mScoreKill;
			ScriptFunction mNetDamage;
		}
		public @property static final
		{
			ScriptFunction PreventDeath() { mixin(MGF("mPreventDeath", "Function Engine.Mutator.PreventDeath")); }
			ScriptFunction CheckRelevance() { mixin(MGF("mCheckRelevance", "Function Engine.Mutator.CheckRelevance")); }
			ScriptFunction OverridePickupQuery() { mixin(MGF("mOverridePickupQuery", "Function Engine.Mutator.OverridePickupQuery")); }
			ScriptFunction HandleRestartGame() { mixin(MGF("mHandleRestartGame", "Function Engine.Mutator.HandleRestartGame")); }
			ScriptFunction CheckEndGame() { mixin(MGF("mCheckEndGame", "Function Engine.Mutator.CheckEndGame")); }
			ScriptFunction FindPlayerStart() { mixin(MGF("mFindPlayerStart", "Function Engine.Mutator.FindPlayerStart")); }
			ScriptFunction CanLeaveVehicle() { mixin(MGF("mCanLeaveVehicle", "Function Engine.Mutator.CanLeaveVehicle")); }
			ScriptFunction PreBeginPlay() { mixin(MGF("mPreBeginPlay", "Function Engine.Mutator.PreBeginPlay")); }
			ScriptFunction MutatorIsAllowed() { mixin(MGF("mMutatorIsAllowed", "Function Engine.Mutator.MutatorIsAllowed")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function Engine.Mutator.Destroyed")); }
			ScriptFunction Mutate() { mixin(MGF("mMutate", "Function Engine.Mutator.Mutate")); }
			ScriptFunction ModifyLogin() { mixin(MGF("mModifyLogin", "Function Engine.Mutator.ModifyLogin")); }
			ScriptFunction ModifyPlayer() { mixin(MGF("mModifyPlayer", "Function Engine.Mutator.ModifyPlayer")); }
			ScriptFunction AddMutator() { mixin(MGF("mAddMutator", "Function Engine.Mutator.AddMutator")); }
			ScriptFunction AlwaysKeep() { mixin(MGF("mAlwaysKeep", "Function Engine.Mutator.AlwaysKeep")); }
			ScriptFunction IsRelevant() { mixin(MGF("mIsRelevant", "Function Engine.Mutator.IsRelevant")); }
			ScriptFunction CheckReplacement() { mixin(MGF("mCheckReplacement", "Function Engine.Mutator.CheckReplacement")); }
			ScriptFunction NotifyLogout() { mixin(MGF("mNotifyLogout", "Function Engine.Mutator.NotifyLogout")); }
			ScriptFunction NotifyLogin() { mixin(MGF("mNotifyLogin", "Function Engine.Mutator.NotifyLogin")); }
			ScriptFunction DriverEnteredVehicle() { mixin(MGF("mDriverEnteredVehicle", "Function Engine.Mutator.DriverEnteredVehicle")); }
			ScriptFunction DriverLeftVehicle() { mixin(MGF("mDriverLeftVehicle", "Function Engine.Mutator.DriverLeftVehicle")); }
			ScriptFunction InitMutator() { mixin(MGF("mInitMutator", "Function Engine.Mutator.InitMutator")); }
			ScriptFunction GetSeamlessTravelActorList() { mixin(MGF("mGetSeamlessTravelActorList", "Function Engine.Mutator.GetSeamlessTravelActorList")); }
			ScriptFunction ScoreObjective() { mixin(MGF("mScoreObjective", "Function Engine.Mutator.ScoreObjective")); }
			ScriptFunction ScoreKill() { mixin(MGF("mScoreKill", "Function Engine.Mutator.ScoreKill")); }
			ScriptFunction NetDamage() { mixin(MGF("mNetDamage", "Function Engine.Mutator.NetDamage")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) GroupNames() { mixin(MGPC("ScriptArray!(ScriptString)", 480)); }
			Mutator NextMutator() { mixin(MGPC("Mutator", 476)); }
		}
		bool bUserAdded() { mixin(MGBPC(492, 0x1)); }
		bool bUserAdded(bool val) { mixin(MSBPC(492, 0x1)); }
	}
final:
	bool PreventDeath(Pawn Killed, Controller Killer, ScriptClass pDamageType, Vector HitLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = Killed;
		*cast(Controller*)&params[4] = Killer;
		*cast(ScriptClass*)&params[8] = pDamageType;
		*cast(Vector*)&params[12] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreventDeath, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool CheckRelevance(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckRelevance, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OverridePickupQuery(Pawn Other, ScriptClass ItemClass, Actor Pickup, ref ubyte bAllowPickup)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(ScriptClass*)&params[4] = ItemClass;
		*cast(Actor*)&params[8] = Pickup;
		params[12] = bAllowPickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePickupQuery, params.ptr, cast(void*)0);
		bAllowPickup = params[12];
		return *cast(bool*)&params[16];
	}
	bool HandleRestartGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleRestartGame, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CheckEndGame(PlayerReplicationInfo Winner, ScriptString Reason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Winner;
		*cast(ScriptString*)&params[4] = Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckEndGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	NavigationPoint FindPlayerStart(Controller pPlayer, ubyte* InTeam = null, ScriptString* IncomingName = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		if (InTeam !is null)
			params[4] = *InTeam;
		if (IncomingName !is null)
			*cast(ScriptString*)&params[8] = *IncomingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerStart, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[20];
	}
	bool CanLeaveVehicle(Vehicle V, Pawn P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanLeaveVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutatorIsAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void Mutate(ScriptString MutateString, PlayerController Sender)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MutateString;
		*cast(PlayerController*)&params[12] = Sender;
		(cast(ScriptObject)this).ProcessEvent(Functions.Mutate, params.ptr, cast(void*)0);
	}
	void ModifyLogin(ref ScriptString Portal, ref ScriptString Options)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyLogin, params.ptr, cast(void*)0);
		Portal = *cast(ScriptString*)params.ptr;
		Options = *cast(ScriptString*)&params[12];
	}
	void ModifyPlayer(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPlayer, params.ptr, cast(void*)0);
	}
	void AddMutator(Mutator M)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Mutator*)params.ptr = M;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMutator, params.ptr, cast(void*)0);
	}
	bool AlwaysKeep(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AlwaysKeep, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsRelevant(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsRelevant, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReplacement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyLogout(Controller Exiting)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Exiting;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLogout, params.ptr, cast(void*)0);
	}
	void NotifyLogin(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyLogin, params.ptr, cast(void*)0);
	}
	void DriverEnteredVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnteredVehicle, params.ptr, cast(void*)0);
	}
	void DriverLeftVehicle(Vehicle V, Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Vehicle*)params.ptr = V;
		*cast(Pawn*)&params[4] = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeftVehicle, params.ptr, cast(void*)0);
	}
	void InitMutator(ScriptString Options, ref ScriptString ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void GetSeamlessTravelActorList(bool bToEntry, ref ScriptArray!(Actor) ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void ScoreObjective(PlayerReplicationInfo Scorer, int Score)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = Scorer;
		*cast(int*)&params[4] = Score;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreObjective, params.ptr, cast(void*)0);
	}
	void ScoreKill(Controller Killer, Controller Killed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	void NetDamage(int OriginalDamage, ref int Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, ref Vector Momentum, ScriptClass pDamageType, Actor DamageCauser)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = OriginalDamage;
		*cast(int*)&params[4] = Damage;
		*cast(Pawn*)&params[8] = injured;
		*cast(Controller*)&params[12] = InstigatedBy;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Vector*)&params[28] = Momentum;
		*cast(ScriptClass*)&params[40] = pDamageType;
		*cast(Actor*)&params[44] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.NetDamage, params.ptr, cast(void*)0);
		Damage = *cast(int*)&params[4];
		Momentum = *cast(Vector*)&params[28];
	}
}
