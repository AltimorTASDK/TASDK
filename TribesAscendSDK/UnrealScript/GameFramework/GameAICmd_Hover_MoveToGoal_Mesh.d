module UnrealScript.GameFramework.GameAICmd_Hover_MoveToGoal_Mesh;

import ScriptClasses;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameAICommand;
import UnrealScript.Engine.HUD;

extern(C++) interface GameAICmd_Hover_MoveToGoal_Mesh : GameAICommand
{
public extern(D):
	@property final
	{
		auto ref
		{
			int MaxMoveFails() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			int MoveFailCounter() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			Vector InitialFinalDestination() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
			Vector LastMoveVectDest() { return *cast(Vector*)(cast(size_t)cast(void*)this + 144); }
			Vector MoveVectDest() { return *cast(Vector*)(cast(size_t)cast(void*)this + 132); }
			float GoalDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float SubGoalReachDist() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float CurrentHoverHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float DesiredHoverHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			Actor Goal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 104); }
			Actor Find() { return *cast(Actor*)(cast(size_t)cast(void*)this + 100); }
			Vector Transient_FinalDest() { return *cast(Vector*)(cast(size_t)cast(void*)this + 88); }
		}
		bool bWasFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 112) & 0x1) != 0; }
		bool bWasFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 112) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 112) &= ~0x1; } return val; }
	}
final:
	bool HoverToGoal(GameAIController AI, Actor InGoal, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = InGoal;
		*cast(float*)&params[8] = InGoalDistance;
		*cast(float*)&params[12] = InHoverHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30693], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool HoverToPoint(GameAIController AI, Vector InPoint, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[28];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Vector*)&params[4] = InPoint;
		*cast(float*)&params[16] = InGoalDistance;
		*cast(float*)&params[20] = InHoverHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30700], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30707], cast(void*)0, cast(void*)0);
	}
	void Popped()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30708], cast(void*)0, cast(void*)0);
	}
	bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30709], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool IsEnemyBasedOnInterpActor(Pawn InEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = InEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30741], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DrawDebug(HUD H, ScriptName Category)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		*cast(ScriptName*)&params[4] = Category;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30744], params.ptr, cast(void*)0);
	}
}
