module UnrealScript.UTGame.UTCTFSquadAI;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCTFSquadAI")()); }
	private static __gshared UTCTFSquadAI mDefaultProperties;
	@property final static UTCTFSquadAI DefaultProperties() { mixin(MGDPC!(UTCTFSquadAI, "UTCTFSquadAI UTGame.Default__UTCTFSquadAI")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTCTFSquadAI.PostBeginPlay")()); }
			ScriptFunction AllowDetourTo() { mixin(MGF!("mAllowDetourTo", "Function UTGame.UTCTFSquadAI.AllowDetourTo")()); }
			ScriptFunction ShouldUseAlternatePaths() { mixin(MGF!("mShouldUseAlternatePaths", "Function UTGame.UTCTFSquadAI.ShouldUseAlternatePaths")()); }
			ScriptFunction SetAlternatePathTo() { mixin(MGF!("mSetAlternatePathTo", "Function UTGame.UTCTFSquadAI.SetAlternatePathTo")()); }
			ScriptFunction BeDevious() { mixin(MGF!("mBeDevious", "Function UTGame.UTCTFSquadAI.BeDevious")()); }
			ScriptFunction FindPathToObjective() { mixin(MGF!("mFindPathToObjective", "Function UTGame.UTCTFSquadAI.FindPathToObjective")()); }
			ScriptFunction GoPickupFlag() { mixin(MGF!("mGoPickupFlag", "Function UTGame.UTCTFSquadAI.GoPickupFlag")()); }
			ScriptFunction FormationCenter() { mixin(MGF!("mFormationCenter", "Function UTGame.UTCTFSquadAI.FormationCenter")()); }
			ScriptFunction VisibleToEnemiesOf() { mixin(MGF!("mVisibleToEnemiesOf", "Function UTGame.UTCTFSquadAI.VisibleToEnemiesOf")()); }
			ScriptFunction FindHidePathFor() { mixin(MGF!("mFindHidePathFor", "Function UTGame.UTCTFSquadAI.FindHidePathFor")()); }
			ScriptFunction CheckVehicle() { mixin(MGF!("mCheckVehicle", "Function UTGame.UTCTFSquadAI.CheckVehicle")()); }
			ScriptFunction OrdersForFlagCarrier() { mixin(MGF!("mOrdersForFlagCarrier", "Function UTGame.UTCTFSquadAI.OrdersForFlagCarrier")()); }
			ScriptFunction MustKeepEnemy() { mixin(MGF!("mMustKeepEnemy", "Function UTGame.UTCTFSquadAI.MustKeepEnemy")()); }
			ScriptFunction NearEnemyBase() { mixin(MGF!("mNearEnemyBase", "Function UTGame.UTCTFSquadAI.NearEnemyBase")()); }
			ScriptFunction NearHomeBase() { mixin(MGF!("mNearHomeBase", "Function UTGame.UTCTFSquadAI.NearHomeBase")()); }
			ScriptFunction FlagNearBase() { mixin(MGF!("mFlagNearBase", "Function UTGame.UTCTFSquadAI.FlagNearBase")()); }
			ScriptFunction OverrideFollowPlayer() { mixin(MGF!("mOverrideFollowPlayer", "Function UTGame.UTCTFSquadAI.OverrideFollowPlayer")()); }
			ScriptFunction CheckSquadObjectives() { mixin(MGF!("mCheckSquadObjectives", "Function UTGame.UTCTFSquadAI.CheckSquadObjectives")()); }
			ScriptFunction EnemyFlagTakenBy() { mixin(MGF!("mEnemyFlagTakenBy", "Function UTGame.UTCTFSquadAI.EnemyFlagTakenBy")()); }
			ScriptFunction AllowTaunt() { mixin(MGF!("mAllowTaunt", "Function UTGame.UTCTFSquadAI.AllowTaunt")()); }
			ScriptFunction ShouldDeferTo() { mixin(MGF!("mShouldDeferTo", "Function UTGame.UTCTFSquadAI.ShouldDeferTo")()); }
			ScriptFunction PriorityObjective() { mixin(MGF!("mPriorityObjective", "Function UTGame.UTCTFSquadAI.PriorityObjective")()); }
			ScriptFunction ModifyThreat() { mixin(MGF!("mModifyThreat", "Function UTGame.UTCTFSquadAI.ModifyThreat")()); }
			ScriptFunction AllowContinueOnFoot() { mixin(MGF!("mAllowContinueOnFoot", "Function UTGame.UTCTFSquadAI.AllowContinueOnFoot")()); }
			ScriptFunction ModifyAggression() { mixin(MGF!("mModifyAggression", "Function UTGame.UTCTFSquadAI.ModifyAggression")()); }
		}
	}
	@property final auto ref
	{
		UTCTFFlag EnemyFlag() { mixin(MGPC!("UTCTFFlag", 688)()); }
		UTCTFFlag FriendlyFlag() { mixin(MGPC!("UTCTFFlag", 684)()); }
		ScriptArray!(UDKSquadAI.AlternateRoute) EnemyFlagRoutes() { mixin(MGPC!("ScriptArray!(UDKSquadAI.AlternateRoute)", 696)()); }
		ScriptArray!(UDKSquadAI.AlternateRoute) FriendlyFlagRoutes() { mixin(MGPC!("ScriptArray!(UDKSquadAI.AlternateRoute)", 708)()); }
		NavigationPoint HidePath() { mixin(MGPC!("NavigationPoint", 692)()); }
		float LastSeeFlagCarrier() { mixin(MGPC!("float", 680)()); }
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
	void ModifyAggression(UTBot B, ref float Aggression)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = Aggression;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAggression, params.ptr, cast(void*)0);
		Aggression = *cast(float*)&params[4];
	}
}
