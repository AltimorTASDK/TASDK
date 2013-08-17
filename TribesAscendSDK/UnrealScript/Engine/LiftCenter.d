module UnrealScript.Engine.LiftCenter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.InterpActor;
import UnrealScript.Engine.Actor;

extern(C++) interface LiftCenter : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LiftCenter")()); }
	private static __gshared LiftCenter mDefaultProperties;
	@property final static LiftCenter DefaultProperties() { mixin(MGDPC!(LiftCenter, "LiftCenter Engine.Default__LiftCenter")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.LiftCenter.PostBeginPlay")()); }
			ScriptFunction SpecialHandling() { mixin(MGF!("mSpecialHandling", "Function Engine.LiftCenter.SpecialHandling")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function Engine.LiftCenter.SuggestMovePreparation")()); }
			ScriptFunction ProceedWithMove() { mixin(MGF!("mProceedWithMove", "Function Engine.LiftCenter.ProceedWithMove")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Trigger LiftTrigger() { mixin(MGPC!("Trigger", 720)()); }
			float CollisionHeight() { mixin(MGPC!("float", 716)()); }
			Vector LiftOffset() { mixin(MGPC!("Vector", 700)()); }
			float MaxDist2D() { mixin(MGPC!("float", 696)()); }
			InterpActor MyLift() { mixin(MGPC!("InterpActor", 692)()); }
		}
		bool bJumpLift() { mixin(MGBPC!(712, 0x1)()); }
		bool bJumpLift(bool val) { mixin(MSBPC!(712, 0x1)()); }
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
