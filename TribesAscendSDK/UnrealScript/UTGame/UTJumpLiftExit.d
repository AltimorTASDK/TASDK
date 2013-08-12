module UnrealScript.UTGame.UTJumpLiftExit;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.LiftExit;

extern(C++) interface UTJumpLiftExit : LiftExit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTJumpLiftExit")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTJumpLiftExit.PostBeginPlay")); }
			ScriptFunction WaitForLift() { return mWaitForLift ? mWaitForLift : (mWaitForLift = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTJumpLiftExit.WaitForLift")); }
			ScriptFunction CanBeReachedFromLiftBy() { return mCanBeReachedFromLiftBy ? mCanBeReachedFromLiftBy : (mCanBeReachedFromLiftBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTJumpLiftExit.CanBeReachedFromLiftBy")); }
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
