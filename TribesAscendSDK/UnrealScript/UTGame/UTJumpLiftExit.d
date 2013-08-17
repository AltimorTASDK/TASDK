module UnrealScript.UTGame.UTJumpLiftExit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.LiftExit;

extern(C++) interface UTJumpLiftExit : LiftExit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTJumpLiftExit")()); }
	private static __gshared UTJumpLiftExit mDefaultProperties;
	@property final static UTJumpLiftExit DefaultProperties() { mixin(MGDPC!(UTJumpLiftExit, "UTJumpLiftExit UTGame.Default__UTJumpLiftExit")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mWaitForLift;
			ScriptFunction mCanBeReachedFromLiftBy;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTJumpLiftExit.PostBeginPlay")()); }
			ScriptFunction WaitForLift() { mixin(MGF!("mWaitForLift", "Function UTGame.UTJumpLiftExit.WaitForLift")()); }
			ScriptFunction CanBeReachedFromLiftBy() { mixin(MGF!("mCanBeReachedFromLiftBy", "Function UTGame.UTJumpLiftExit.CanBeReachedFromLiftBy")()); }
		}
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void WaitForLift(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.WaitForLift, params.ptr, cast(void*)0);
	}
	bool CanBeReachedFromLiftBy(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeReachedFromLiftBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
