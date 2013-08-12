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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFSquadAI")); }
	private static __gshared UTCTFSquadAI mDefaultProperties;
	@property final static UTCTFSquadAI DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTCTFSquadAI)("UTCTFSquadAI UTGame.Default__UTCTFSquadAI")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAllowDetourTo;
			ScriptFunction mShouldUseAlternatePaths;
			ScriptFunction mSetAlternatePathTo;
			ScriptFunction mBeDevious;
			ScriptFunction mFindPathToObjective;
			ScriptFunction mGoPickupFlag;
			ScriptFunction mFormationCenter;
			ScriptFunction mVisibleToEnemiesOf;
			ScriptFunction mFindHidePathFor;
			ScriptFunction mCheckVehicle;
			ScriptFunction mOrdersForFlagCarrier;
			ScriptFunction mMustKeepEnemy;
			ScriptFunction mNearEnemyBase;
			ScriptFunction mNearHomeBase;
			ScriptFunction mFlagNearBase;
			ScriptFunction mOverrideFollowPlayer;
			ScriptFunction mCheckSquadObjectives;
			ScriptFunction mEnemyFlagTakenBy;
			ScriptFunction mAllowTaunt;
			ScriptFunction mShouldDeferTo;
			ScriptFunction mPriorityObjective;
			ScriptFunction mModifyThreat;
			ScriptFunction mAllowContinueOnFoot;
			ScriptFunction mModifyAggression;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.PostBeginPlay")); }
			ScriptFunction AllowDetourTo() { return mAllowDetourTo ? mAllowDetourTo : (mAllowDetourTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.AllowDetourTo")); }
			ScriptFunction ShouldUseAlternatePaths() { return mShouldUseAlternatePaths ? mShouldUseAlternatePaths : (mShouldUseAlternatePaths = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.ShouldUseAlternatePaths")); }
			ScriptFunction SetAlternatePathTo() { return mSetAlternatePathTo ? mSetAlternatePathTo : (mSetAlternatePathTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.SetAlternatePathTo")); }
			ScriptFunction BeDevious() { return mBeDevious ? mBeDevious : (mBeDevious = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.BeDevious")); }
			ScriptFunction FindPathToObjective() { return mFindPathToObjective ? mFindPathToObjective : (mFindPathToObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.FindPathToObjective")); }
			ScriptFunction GoPickupFlag() { return mGoPickupFlag ? mGoPickupFlag : (mGoPickupFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.GoPickupFlag")); }
			ScriptFunction FormationCenter() { return mFormationCenter ? mFormationCenter : (mFormationCenter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.FormationCenter")); }
			ScriptFunction VisibleToEnemiesOf() { return mVisibleToEnemiesOf ? mVisibleToEnemiesOf : (mVisibleToEnemiesOf = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.VisibleToEnemiesOf")); }
			ScriptFunction FindHidePathFor() { return mFindHidePathFor ? mFindHidePathFor : (mFindHidePathFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.FindHidePathFor")); }
			ScriptFunction CheckVehicle() { return mCheckVehicle ? mCheckVehicle : (mCheckVehicle = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.CheckVehicle")); }
			ScriptFunction OrdersForFlagCarrier() { return mOrdersForFlagCarrier ? mOrdersForFlagCarrier : (mOrdersForFlagCarrier = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.OrdersForFlagCarrier")); }
			ScriptFunction MustKeepEnemy() { return mMustKeepEnemy ? mMustKeepEnemy : (mMustKeepEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.MustKeepEnemy")); }
			ScriptFunction NearEnemyBase() { return mNearEnemyBase ? mNearEnemyBase : (mNearEnemyBase = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.NearEnemyBase")); }
			ScriptFunction NearHomeBase() { return mNearHomeBase ? mNearHomeBase : (mNearHomeBase = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.NearHomeBase")); }
			ScriptFunction FlagNearBase() { return mFlagNearBase ? mFlagNearBase : (mFlagNearBase = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.FlagNearBase")); }
			ScriptFunction OverrideFollowPlayer() { return mOverrideFollowPlayer ? mOverrideFollowPlayer : (mOverrideFollowPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.OverrideFollowPlayer")); }
			ScriptFunction CheckSquadObjectives() { return mCheckSquadObjectives ? mCheckSquadObjectives : (mCheckSquadObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.CheckSquadObjectives")); }
			ScriptFunction EnemyFlagTakenBy() { return mEnemyFlagTakenBy ? mEnemyFlagTakenBy : (mEnemyFlagTakenBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.EnemyFlagTakenBy")); }
			ScriptFunction AllowTaunt() { return mAllowTaunt ? mAllowTaunt : (mAllowTaunt = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.AllowTaunt")); }
			ScriptFunction ShouldDeferTo() { return mShouldDeferTo ? mShouldDeferTo : (mShouldDeferTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.ShouldDeferTo")); }
			ScriptFunction PriorityObjective() { return mPriorityObjective ? mPriorityObjective : (mPriorityObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.PriorityObjective")); }
			ScriptFunction ModifyThreat() { return mModifyThreat ? mModifyThreat : (mModifyThreat = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.ModifyThreat")); }
			ScriptFunction AllowContinueOnFoot() { return mAllowContinueOnFoot ? mAllowContinueOnFoot : (mAllowContinueOnFoot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.AllowContinueOnFoot")); }
			ScriptFunction ModifyAggression() { return mModifyAggression ? mModifyAggression : (mModifyAggression = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFSquadAI.ModifyAggression")); }
		}
	}
	@property final auto ref
	{
		UTCTFFlag EnemyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 688); }
		UTCTFFlag FriendlyFlag() { return *cast(UTCTFFlag*)(cast(size_t)cast(void*)this + 684); }
		ScriptArray!(UDKSquadAI.AlternateRoute) EnemyFlagRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 696); }
		ScriptArray!(UDKSquadAI.AlternateRoute) FriendlyFlagRoutes() { return *cast(ScriptArray!(UDKSquadAI.AlternateRoute)*)(cast(size_t)cast(void*)this + 708); }
		NavigationPoint HidePath() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 692); }
		float LastSeeFlagCarrier() { return *cast(float*)(cast(size_t)cast(void*)this + 680); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool AllowDetourTo(UTBot B, NavigationPoint N)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(NavigationPoint*)&params[4] = N;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowDetourTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool ShouldUseAlternatePaths()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldUseAlternatePaths, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetAlternatePathTo(NavigationPoint NewRouteObjective, UTBot RouteMaker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(NavigationPoint*)params.ptr = NewRouteObjective;
		*cast(UTBot*)&params[4] = RouteMaker;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlternatePathTo, params.ptr, cast(void*)0);
	}
	bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeDevious, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FindPathToObjective(UTBot B, Actor O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Actor*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPathToObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool GoPickupFlag(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.GoPickupFlag, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor FormationCenter(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.FormationCenter, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool VisibleToEnemiesOf(Actor A, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.VisibleToEnemiesOf, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	NavigationPoint FindHidePathFor(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindHidePathFor, params.ptr, cast(void*)0);
		return *cast(NavigationPoint*)&params[4];
	}
	bool CheckVehicle(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckVehicle, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool OrdersForFlagCarrier(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.OrdersForFlagCarrier, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool MustKeepEnemy(Pawn E)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = E;
		(cast(ScriptObject)this).ProcessEvent(Functions.MustKeepEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearEnemyBase(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearEnemyBase, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearHomeBase(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearHomeBase, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool FlagNearBase()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagNearBase, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool OverrideFollowPlayer(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverrideFollowPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CheckSquadObjectives(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckSquadObjectives, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void EnemyFlagTakenBy(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnemyFlagTakenBy, params.ptr, cast(void*)0);
	}
	bool AllowTaunt(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowTaunt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDeferTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ubyte PriorityObjective(UTBot B)
	{
		ubyte params[5];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.PriorityObjective, params.ptr, cast(void*)0);
		return params[4];
	}
	float ModifyThreat(float Current, Pawn NewThreat, bool bThreatVisible, UTBot B)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = Current;
		*cast(Pawn*)&params[4] = NewThreat;
		*cast(bool*)&params[8] = bThreatVisible;
		*cast(UTBot*)&params[12] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyThreat, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	bool AllowContinueOnFoot(UTBot B, UTVehicle V)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(UTVehicle*)&params[4] = V;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowContinueOnFoot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void ModifyAggression(UTBot B, float* Aggression)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = *Aggression;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAggression, params.ptr, cast(void*)0);
		*Aggression = *cast(float*)&params[4];
	}
}
