module UnrealScript.GameFramework.GameAICmd_Hover_MoveToGoal;

import ScriptClasses;
import UnrealScript.GameFramework.GameAIController;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ReachSpec;
import UnrealScript.GameFramework.GameAICommand;

extern(C++) interface GameAICmd_Hover_MoveToGoal : GameAICommand
{
	public @property final auto ref ReachSpec CurrentSpec() { return *cast(ReachSpec*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref Vector MoveVectDest() { return *cast(Vector*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref float GoalDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float SubGoalReachDist() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float CurrentHoverHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float DesiredHoverHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bWasFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bWasFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref Actor Goal() { return *cast(Actor*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Actor Find() { return *cast(Actor*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref Actor Path() { return *cast(Actor*)(cast(size_t)cast(void*)this + 88); }
	final bool MoveToGoal(GameAIController AI, Actor InGoal, float InGoalDistance, float InHoverHeight)
	{
		ubyte params[20];
		params[] = 0;
		*cast(GameAIController*)params.ptr = AI;
		*cast(Actor*)&params[4] = InGoal;
		*cast(float*)&params[8] = InGoalDistance;
		*cast(float*)&params[12] = InHoverHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30644], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void Pushed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30651], cast(void*)0, cast(void*)0);
	}
	final bool HandlePathObstruction(Actor BlockedBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = BlockedBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30652], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool IsEnemyBasedOnInterpActor(Pawn InEnemy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = InEnemy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[30674], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
