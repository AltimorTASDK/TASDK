module UnrealScript.Engine.LiftExit;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LiftCenter;
import UnrealScript.Engine.Pawn;

extern(C++) interface LiftExit : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LiftExit")); }
	private static __gshared LiftExit mDefaultProperties;
	@property final static LiftExit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LiftExit)("LiftExit Engine.Default__LiftExit")); }
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
			ScriptFunction CanBeReachedFromLiftBy() { return mCanBeReachedFromLiftBy ? mCanBeReachedFromLiftBy : (mCanBeReachedFromLiftBy = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftExit.CanBeReachedFromLiftBy")); }
			ScriptFunction WaitForLift() { return mWaitForLift ? mWaitForLift : (mWaitForLift = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftExit.WaitForLift")); }
			ScriptFunction SuggestMovePreparation() { return mSuggestMovePreparation ? mSuggestMovePreparation : (mSuggestMovePreparation = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftExit.SuggestMovePreparation")); }
		}
	}
	@property final
	{
		@property final auto ref LiftCenter MyLiftCenter() { return *cast(LiftCenter*)(cast(size_t)cast(void*)this + 692); }
		bool bExitOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 696) & 0x1) != 0; }
		bool bExitOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 696) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 696) &= ~0x1; } return val; }
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
