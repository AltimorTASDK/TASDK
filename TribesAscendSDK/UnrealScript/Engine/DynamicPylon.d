module UnrealScript.Engine.DynamicPylon;

import ScriptClasses;
import UnrealScript.Engine.Pylon;

extern(C++) interface DynamicPylon : Pylon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicPylon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mRebuildDynamicEdges;
			ScriptFunction mFlushDynamicEdges;
			ScriptFunction mStartedMoving;
			ScriptFunction mStoppedMoving;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicPylon.PostBeginPlay")); }
			ScriptFunction RebuildDynamicEdges() { return mRebuildDynamicEdges ? mRebuildDynamicEdges : (mRebuildDynamicEdges = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicPylon.RebuildDynamicEdges")); }
			ScriptFunction FlushDynamicEdges() { return mFlushDynamicEdges ? mFlushDynamicEdges : (mFlushDynamicEdges = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicPylon.FlushDynamicEdges")); }
			ScriptFunction StartedMoving() { return mStartedMoving ? mStartedMoving : (mStartedMoving = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicPylon.StartedMoving")); }
			ScriptFunction StoppedMoving() { return mStoppedMoving ? mStoppedMoving : (mStoppedMoving = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicPylon.StoppedMoving")); }
		}
	}
	@property final
	{
		bool bMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 832) & 0x1) != 0; }
		bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 832) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 832) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void RebuildDynamicEdges()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RebuildDynamicEdges, cast(void*)0, cast(void*)0);
	}
	void FlushDynamicEdges()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FlushDynamicEdges, cast(void*)0, cast(void*)0);
	}
	void StartedMoving()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartedMoving, cast(void*)0, cast(void*)0);
	}
	void StoppedMoving()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StoppedMoving, cast(void*)0, cast(void*)0);
	}
}
