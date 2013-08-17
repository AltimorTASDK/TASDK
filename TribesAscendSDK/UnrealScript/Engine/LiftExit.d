module UnrealScript.Engine.LiftExit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.Engine.Pawn;

extern(C++) interface LiftExit : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LiftExit")); }
	private static __gshared LiftExit mDefaultProperties;
	@property final static LiftExit DefaultProperties() { mixin(MGDPC("LiftExit", "LiftExit Engine.Default__LiftExit")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanBeReachedFromLiftBy;
			ScriptFunction mWaitForLift;
			ScriptFunction mSuggestMovePreparation;
		}
		public @property static final
		{
			ScriptFunction CanBeReachedFromLiftBy() { mixin(MGF("mCanBeReachedFromLiftBy", "Function Engine.LiftExit.CanBeReachedFromLiftBy")); }
			ScriptFunction WaitForLift() { mixin(MGF("mWaitForLift", "Function Engine.LiftExit.WaitForLift")); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF("mSuggestMovePreparation", "Function Engine.LiftExit.SuggestMovePreparation")); }
		}
	}
	@property final
	{
		@property final auto ref LiftCenter MyLiftCenter() { mixin(MGPC("LiftCenter", 692)); }
		bool bExitOnly() { mixin(MGBPC(696, 0x1)); }
		bool bExitOnly(bool val) { mixin(MSBPC(696, 0x1)); }
	}
final:
	bool CanBeReachedFromLiftBy(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeReachedFromLiftBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void WaitForLift(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForLift, params.ptr, cast(void*)0);
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
