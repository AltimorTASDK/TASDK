module UnrealScript.UTGame.UTDMSquad;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.Engine.HUD;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTDMSquad : UTSquadAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDMSquad")); }
	private static __gshared UTDMSquad mDefaultProperties;
	@property final static UTDMSquad DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDMSquad)("UTDMSquad UTGame.Default__UTDMSquad")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDisplayDebug;
			ScriptFunction mIsDefending;
			ScriptFunction mAddBot;
			ScriptFunction mRemoveBot;
			ScriptFunction mShouldDeferTo;
			ScriptFunction mCheckSquadObjectives;
			ScriptFunction mWaitAtThisPosition;
			ScriptFunction mNearFormationCenter;
			ScriptFunction mBeDevious;
			ScriptFunction mGetOrders;
			ScriptFunction mSetEnemy;
			ScriptFunction mFriendlyToward;
			ScriptFunction mAllowContinueOnFoot;
			ScriptFunction mVehicleDesireability;
			ScriptFunction mAssignSquadResponsibility;
		}
		public @property static final
		{
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.DisplayDebug")); }
			ScriptFunction IsDefending() { return mIsDefending ? mIsDefending : (mIsDefending = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.IsDefending")); }
			ScriptFunction AddBot() { return mAddBot ? mAddBot : (mAddBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.AddBot")); }
			ScriptFunction RemoveBot() { return mRemoveBot ? mRemoveBot : (mRemoveBot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.RemoveBot")); }
			ScriptFunction ShouldDeferTo() { return mShouldDeferTo ? mShouldDeferTo : (mShouldDeferTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.ShouldDeferTo")); }
			ScriptFunction CheckSquadObjectives() { return mCheckSquadObjectives ? mCheckSquadObjectives : (mCheckSquadObjectives = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.CheckSquadObjectives")); }
			ScriptFunction WaitAtThisPosition() { return mWaitAtThisPosition ? mWaitAtThisPosition : (mWaitAtThisPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.WaitAtThisPosition")); }
			ScriptFunction NearFormationCenter() { return mNearFormationCenter ? mNearFormationCenter : (mNearFormationCenter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.NearFormationCenter")); }
			ScriptFunction BeDevious() { return mBeDevious ? mBeDevious : (mBeDevious = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.BeDevious")); }
			ScriptFunction GetOrders() { return mGetOrders ? mGetOrders : (mGetOrders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.GetOrders")); }
			ScriptFunction SetEnemy() { return mSetEnemy ? mSetEnemy : (mSetEnemy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.SetEnemy")); }
			ScriptFunction FriendlyToward() { return mFriendlyToward ? mFriendlyToward : (mFriendlyToward = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.FriendlyToward")); }
			ScriptFunction AllowContinueOnFoot() { return mAllowContinueOnFoot ? mAllowContinueOnFoot : (mAllowContinueOnFoot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.AllowContinueOnFoot")); }
			ScriptFunction VehicleDesireability() { return mVehicleDesireability ? mVehicleDesireability : (mVehicleDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.VehicleDesireability")); }
			ScriptFunction AssignSquadResponsibility() { return mAssignSquadResponsibility ? mAssignSquadResponsibility : (mAssignSquadResponsibility = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDMSquad.AssignSquadResponsibility")); }
		}
	}
final:
	void DisplayDebug(HUD pHUD, float* YL, float* YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *YL;
		*cast(float*)&params[8] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*YL = *cast(float*)&params[4];
		*YPos = *cast(float*)&params[8];
	}
	bool IsDefending(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDefending, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBot, params.ptr, cast(void*)0);
	}
	void RemoveBot(UTBot B)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveBot, params.ptr, cast(void*)0);
	}
	bool ShouldDeferTo(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDeferTo, params.ptr, cast(void*)0);
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
	bool WaitAtThisPosition(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitAtThisPosition, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearFormationCenter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearFormationCenter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BeDevious(Pawn Enemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Enemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeDevious, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptName GetOrders()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrders, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	bool SetEnemy(UTBot B, Pawn NewEnemy)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = NewEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnemy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool FriendlyToward(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.FriendlyToward, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
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
	float VehicleDesireability(UTVehicle V, UTBot B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		*cast(UTBot*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.VehicleDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	bool AssignSquadResponsibility(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.AssignSquadResponsibility, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
