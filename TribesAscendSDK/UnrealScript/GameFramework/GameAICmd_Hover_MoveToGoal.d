module UnrealScript.GameFramework.GameAICmd_Hover_MoveToGoal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReachSpec;
import UnrealScript.GameFramework.GameAICommand;

extern(C++) interface GameAICmd_Hover_MoveToGoal : GameAICommand
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameAICmd_Hover_MoveToGoal")()); }
	private static __gshared GameAICmd_Hover_MoveToGoal mDefaultProperties;
	@property final static GameAICmd_Hover_MoveToGoal DefaultProperties() { mixin(MGDPC!(GameAICmd_Hover_MoveToGoal, "GameAICmd_Hover_MoveToGoal GameFramework.Default__GameAICmd_Hover_MoveToGoal")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMoveToGoal;
			ScriptFunction mPushed;
			ScriptFunction mHandlePathObstruction;
			ScriptFunction mIsEnemyBasedOnInterpActor;
		}
		public @property static final
		{
			ScriptFunction MoveToGoal() { mixin(MGF!("mMoveToGoal", "Function GameFramework.GameAICmd_Hover_MoveToGoal.MoveToGoal")()); }
			ScriptFunction Pushed() { mixin(MGF!("mPushed", "Function GameFramework.GameAICmd_Hover_MoveToGoal.Pushed")()); }
			ScriptFunction HandlePathObstruction() { mixin(MGF!("mHandlePathObstruction", "Function GameFramework.GameAICmd_Hover_MoveToGoal.HandlePathObstruction")()); }
			ScriptFunction IsEnemyBasedOnInterpActor() { mixin(MGF!("mIsEnemyBasedOnInterpActor", "Function GameFramework.GameAICmd_Hover_MoveToGoal.IsEnemyBasedOnInterpActor")()); }
		}
	}
	static struct MoveDown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameAICmd_Hover_MoveToGoal.MoveDown")()); }
	}
	static struct Moving
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State GameFramework.GameAICmd_Hover_MoveToGoal.Moving")()); }
	}
	@property final
	{
		auto ref
		{
			ReachSpec CurrentSpec() { mixin(MGPC!("ReachSpec", 136)()); }
			Vector MoveVectDest() { mixin(MGPC!("Vector", 124)()); }
			float GoalDistance() { mixin(MGPC!("float", 120)()); }
			float SubGoalReachDist() { mixin(MGPC!("float", 116)()); }
			float CurrentHoverHeight() { mixin(MGPC!("float", 112)()); }
			float DesiredHoverHeight() { mixin(MGPC!("float", 108)()); }
			float Radius() { mixin(MGPC!("float", 100)()); }
			Actor Goal() { mixin(MGPC!("Actor", 96)()); }
			Actor Find() { mixin(MGPC!("Actor", 92)()); }
			Actor Path() { mixin(MGPC!("Actor", 88)()); }
		}
		bool bWasFiring() { mixin(MGBPC!(104, 0x1)()); }
		bool bWasFiring(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
final:
	static bool MoveToGoal(GameAIController AI, Actor InGoal, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = InGoal;
		*cast(float*)&params[8] = InGoalDistance;
		*cast(float*)&params[12] = InHoverHeight;
		StaticClass.ProcessEvent(Functions.MoveToGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pushed, cast(void*)0, cast(void*)0);
	}
	bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePathObstruction, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsEnemyBasedOnInterpActor(Pawn InEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = InEnemy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnemyBasedOnInterpActor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
