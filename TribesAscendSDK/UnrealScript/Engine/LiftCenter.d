module UnrealScript.Engine.LiftCenter;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.InterpActor;
import UnrealScript.Engine.Actor;

extern(C++) interface LiftCenter : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LiftCenter")); }
	private static __gshared LiftCenter mDefaultProperties;
	@property final static LiftCenter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LiftCenter)("LiftCenter Engine.Default__LiftCenter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSpecialHandling;
			ScriptFunction mSuggestMovePreparation;
			ScriptFunction mProceedWithMove;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftCenter.PostBeginPlay")); }
			ScriptFunction SpecialHandling() { return mSpecialHandling ? mSpecialHandling : (mSpecialHandling = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftCenter.SpecialHandling")); }
			ScriptFunction SuggestMovePreparation() { return mSuggestMovePreparation ? mSuggestMovePreparation : (mSuggestMovePreparation = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftCenter.SuggestMovePreparation")); }
			ScriptFunction ProceedWithMove() { return mProceedWithMove ? mProceedWithMove : (mProceedWithMove = ScriptObject.Find!(ScriptFunction)("Function Engine.LiftCenter.ProceedWithMove")); }
		}
	}
	@property final
	{
		auto ref
		{
			Trigger LiftTrigger() { return *cast(Trigger*)(cast(size_t)cast(void*)this + 720); }
			float CollisionHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			Vector LiftOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 700); }
			float MaxDist2D() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			InterpActor MyLift() { return *cast(InterpActor*)(cast(size_t)cast(void*)this + 692); }
		}
		bool bJumpLift() { return (*cast(uint*)(cast(size_t)cast(void*)this + 712) & 0x1) != 0; }
		bool bJumpLift(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 712) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 712) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ProceedWithMove(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProceedWithMove, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
