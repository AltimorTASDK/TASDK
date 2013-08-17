module UnrealScript.UTGame.UTDMSquad;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTDMSquad")); }
	private static __gshared UTDMSquad mDefaultProperties;
	@property final static UTDMSquad DefaultProperties() { mixin(MGDPC("UTDMSquad", "UTDMSquad UTGame.Default__UTDMSquad")); }
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
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function UTGame.UTDMSquad.DisplayDebug")); }
			ScriptFunction IsDefending() { mixin(MGF("mIsDefending", "Function UTGame.UTDMSquad.IsDefending")); }
			ScriptFunction AddBot() { mixin(MGF("mAddBot", "Function UTGame.UTDMSquad.AddBot")); }
			ScriptFunction RemoveBot() { mixin(MGF("mRemoveBot", "Function UTGame.UTDMSquad.RemoveBot")); }
			ScriptFunction ShouldDeferTo() { mixin(MGF("mShouldDeferTo", "Function UTGame.UTDMSquad.ShouldDeferTo")); }
			ScriptFunction CheckSquadObjectives() { mixin(MGF("mCheckSquadObjectives", "Function UTGame.UTDMSquad.CheckSquadObjectives")); }
			ScriptFunction WaitAtThisPosition() { mixin(MGF("mWaitAtThisPosition", "Function UTGame.UTDMSquad.WaitAtThisPosition")); }
			ScriptFunction NearFormationCenter() { mixin(MGF("mNearFormationCenter", "Function UTGame.UTDMSquad.NearFormationCenter")); }
			ScriptFunction BeDevious() { mixin(MGF("mBeDevious", "Function UTGame.UTDMSquad.BeDevious")); }
			ScriptFunction GetOrders() { mixin(MGF("mGetOrders", "Function UTGame.UTDMSquad.GetOrders")); }
			ScriptFunction SetEnemy() { mixin(MGF("mSetEnemy", "Function UTGame.UTDMSquad.SetEnemy")); }
			ScriptFunction FriendlyToward() { mixin(MGF("mFriendlyToward", "Function UTGame.UTDMSquad.FriendlyToward")); }
			ScriptFunction AllowContinueOnFoot() { mixin(MGF("mAllowContinueOnFoot", "Function UTGame.UTDMSquad.AllowContinueOnFoot")); }
			ScriptFunction VehicleDesireability() { mixin(MGF("mVehicleDesireability", "Function UTGame.UTDMSquad.VehicleDesireability")); }
			ScriptFunction AssignSquadResponsibility() { mixin(MGF("mAssignSquadResponsibility", "Function UTGame.UTDMSquad.AssignSquadResponsibility")); }
		}
	}
final:
	void DisplayDebug(HUD pHUD, ref float YL, ref float YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = YL;
		*cast(float*)&params[8] = YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		YL = *cast(float*)&params[4];
		YPos = *cast(float*)&params[8];
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
