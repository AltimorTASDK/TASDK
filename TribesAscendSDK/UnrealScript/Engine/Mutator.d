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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Mutator")); }
	private static __gshared Mutator mDefaultProperties;
	@property final static Mutator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Mutator)("Mutator Engine.Default__Mutator")); }
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
			ScriptFunction PreventDeath() { return mPreventDeath ? mPreventDeath : (mPreventDeath = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.PreventDeath")); }
			ScriptFunction CheckRelevance() { return mCheckRelevance ? mCheckRelevance : (mCheckRelevance = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.CheckRelevance")); }
			ScriptFunction OverridePickupQuery() { return mOverridePickupQuery ? mOverridePickupQuery : (mOverridePickupQuery = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.OverridePickupQuery")); }
			ScriptFunction HandleRestartGame() { return mHandleRestartGame ? mHandleRestartGame : (mHandleRestartGame = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.HandleRestartGame")); }
			ScriptFunction CheckEndGame() { return mCheckEndGame ? mCheckEndGame : (mCheckEndGame = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.CheckEndGame")); }
			ScriptFunction FindPlayerStart() { return mFindPlayerStart ? mFindPlayerStart : (mFindPlayerStart = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.FindPlayerStart")); }
			ScriptFunction CanLeaveVehicle() { return mCanLeaveVehicle ? mCanLeaveVehicle : (mCanLeaveVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.CanLeaveVehicle")); }
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.PreBeginPlay")); }
			ScriptFunction MutatorIsAllowed() { return mMutatorIsAllowed ? mMutatorIsAllowed : (mMutatorIsAllowed = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.MutatorIsAllowed")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.Destroyed")); }
			ScriptFunction Mutate() { return mMutate ? mMutate : (mMutate = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.Mutate")); }
			ScriptFunction ModifyLogin() { return mModifyLogin ? mModifyLogin : (mModifyLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.ModifyLogin")); }
			ScriptFunction ModifyPlayer() { return mModifyPlayer ? mModifyPlayer : (mModifyPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.ModifyPlayer")); }
			ScriptFunction AddMutator() { return mAddMutator ? mAddMutator : (mAddMutator = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.AddMutator")); }
			ScriptFunction AlwaysKeep() { return mAlwaysKeep ? mAlwaysKeep : (mAlwaysKeep = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.AlwaysKeep")); }
			ScriptFunction IsRelevant() { return mIsRelevant ? mIsRelevant : (mIsRelevant = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.IsRelevant")); }
			ScriptFunction CheckReplacement() { return mCheckReplacement ? mCheckReplacement : (mCheckReplacement = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.CheckReplacement")); }
			ScriptFunction NotifyLogout() { return mNotifyLogout ? mNotifyLogout : (mNotifyLogout = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.NotifyLogout")); }
			ScriptFunction NotifyLogin() { return mNotifyLogin ? mNotifyLogin : (mNotifyLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.NotifyLogin")); }
			ScriptFunction DriverEnteredVehicle() { return mDriverEnteredVehicle ? mDriverEnteredVehicle : (mDriverEnteredVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.DriverEnteredVehicle")); }
			ScriptFunction DriverLeftVehicle() { return mDriverLeftVehicle ? mDriverLeftVehicle : (mDriverLeftVehicle = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.DriverLeftVehicle")); }
			ScriptFunction InitMutator() { return mInitMutator ? mInitMutator : (mInitMutator = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.InitMutator")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.GetSeamlessTravelActorList")); }
			ScriptFunction ScoreObjective() { return mScoreObjective ? mScoreObjective : (mScoreObjective = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.ScoreObjective")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.ScoreKill")); }
			ScriptFunction NetDamage() { return mNetDamage ? mNetDamage : (mNetDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.Mutator.NetDamage")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) GroupNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 480); }
			Mutator NextMutator() { return *cast(Mutator*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bUserAdded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bUserAdded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
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
	bool OverridePickupQuery(Pawn Other, ScriptClass ItemClass, Actor Pickup, ubyte* bAllowPickup)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(ScriptClass*)&params[4] = ItemClass;
		*cast(Actor*)&params[8] = Pickup;
		params[12] = *bAllowPickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePickupQuery, params.ptr, cast(void*)0);
		*bAllowPickup = params[12];
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
	NavigationPoint FindPlayerStart(Controller pPlayer, ubyte InTeam, ScriptString IncomingName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = pPlayer;
		params[4] = InTeam;
		*cast(ScriptString*)&params[8] = IncomingName;
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
	void ModifyLogin(ScriptString* Portal, ScriptString* Options)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Portal;
		*cast(ScriptString*)&params[12] = *Options;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyLogin, params.ptr, cast(void*)0);
		*Portal = *cast(ScriptString*)params.ptr;
		*Options = *cast(ScriptString*)&params[12];
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
	void InitMutator(ScriptString Options, ScriptString* ErrorMessage)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMutator, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[12];
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
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
	void NetDamage(int OriginalDamage, int* Damage, Pawn injured, Controller InstigatedBy, Vector HitLocation, Vector* Momentum, ScriptClass pDamageType, Actor DamageCauser)
	{
		ubyte params[48];
		params[] = 0;
		*cast(int*)params.ptr = OriginalDamage;
		*cast(int*)&params[4] = *Damage;
		*cast(Pawn*)&params[8] = injured;
		*cast(Controller*)&params[12] = InstigatedBy;
		*cast(Vector*)&params[16] = HitLocation;
		*cast(Vector*)&params[28] = *Momentum;
		*cast(ScriptClass*)&params[40] = pDamageType;
		*cast(Actor*)&params[44] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.NetDamage, params.ptr, cast(void*)0);
		*Damage = *cast(int*)&params[4];
		*Momentum = *cast(Vector*)&params[28];
	}
}
