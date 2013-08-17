module UnrealScript.GameFramework.GameAICmd_Hover_MoveToGoal_Mesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameAICommand;
import UnrealScript.Engine.HUD;

extern(C++) interface GameAICmd_Hover_MoveToGoal_Mesh : GameAICommand
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameAICmd_Hover_MoveToGoal_Mesh")); }
	private static __gshared GameAICmd_Hover_MoveToGoal_Mesh mDefaultProperties;
	@property final static GameAICmd_Hover_MoveToGoal_Mesh DefaultProperties() { mixin(MGDPC("GameAICmd_Hover_MoveToGoal_Mesh", "GameAICmd_Hover_MoveToGoal_Mesh GameFramework.Default__GameAICmd_Hover_MoveToGoal_Mesh")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHoverToGoal;
			ScriptFunction mHoverToPoint;
			ScriptFunction mPushed;
			ScriptFunction mPopped;
			ScriptFunction mHandlePathObstruction;
			ScriptFunction mIsEnemyBasedOnInterpActor;
			ScriptFunction mDrawDebug;
		}
		public @property static final
		{
			ScriptFunction HoverToGoal() { mixin(MGF("mHoverToGoal", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.HoverToGoal")); }
			ScriptFunction HoverToPoint() { mixin(MGF("mHoverToPoint", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.HoverToPoint")); }
			ScriptFunction Pushed() { mixin(MGF("mPushed", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.Pushed")); }
			ScriptFunction Popped() { mixin(MGF("mPopped", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.Popped")); }
			ScriptFunction HandlePathObstruction() { mixin(MGF("mHandlePathObstruction", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.HandlePathObstruction")); }
			ScriptFunction IsEnemyBasedOnInterpActor() { mixin(MGF("mIsEnemyBasedOnInterpActor", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.IsEnemyBasedOnInterpActor")); }
			ScriptFunction DrawDebug() { mixin(MGF("mDrawDebug", "Function GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.DrawDebug")); }
		}
	}
	static struct DelayFailure
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.DelayFailure")); }
	}
	static struct MoveDown
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.MoveDown")); }
	}
	static struct Moving
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.Moving")); }
	}
	static struct FallbackMoveToward
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.FallbackMoveToward")); }
	}
	static struct Fallback
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State GameFramework.GameAICmd_Hover_MoveToGoal_Mesh.Fallback")); }
	}
	@property final
	{
		auto ref
		{
			int MaxMoveFails() { mixin(MGPC("int", 172)); }
			int MoveFailCounter() { mixin(MGPC("int", 168)); }
			Vector InitialFinalDestination() { mixin(MGPC("Vector", 156)); }
			Vector LastMoveVectDest() { mixin(MGPC("Vector", 144)); }
			Vector MoveVectDest() { mixin(MGPC("Vector", 132)); }
			float GoalDistance() { mixin(MGPC("float", 128)); }
			float SubGoalReachDist() { mixin(MGPC("float", 124)); }
			float CurrentHoverHeight() { mixin(MGPC("float", 120)); }
			float DesiredHoverHeight() { mixin(MGPC("float", 116)); }
			float Radius() { mixin(MGPC("float", 108)); }
			Actor Goal() { mixin(MGPC("Actor", 104)); }
			Actor Find() { mixin(MGPC("Actor", 100)); }
			Vector Transient_FinalDest() { mixin(MGPC("Vector", 88)); }
		}
		bool bWasFiring() { mixin(MGBPC(112, 0x1)); }
		bool bWasFiring(bool val) { mixin(MSBPC(112, 0x1)); }
	}
final:
	static bool HoverToGoal(GameAIController AI, Actor InGoal, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = InGoal;
		*cast(float*)&params[8] = InGoalDistance;
		*cast(float*)&params[12] = InHoverHeight;
		StaticClass.ProcessEvent(Functions.HoverToGoal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static bool HoverToPoint(GameAIController AI, Vector InPoint, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[28];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Vector*)&params[4] = InPoint;
		*cast(float*)&params[16] = InGoalDistance;
		*cast(float*)&params[20] = InHoverHeight;
		StaticClass.ProcessEvent(Functions.HoverToPoint, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pushed, cast(void*)0, cast(void*)0);
	}
	void Popped()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Popped, cast(void*)0, cast(void*)0);
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
	void DrawDebug(HUD H, ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		*cast(ScriptName*)&params[4] = Category;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawDebug, params.ptr, cast(void*)0);
	}
}
