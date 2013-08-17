module UnrealScript.Engine.DynamicPylon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pylon;

extern(C++) interface DynamicPylon : Pylon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DynamicPylon")()); }
	private static __gshared DynamicPylon mDefaultProperties;
	@property final static DynamicPylon DefaultProperties() { mixin(MGDPC!(DynamicPylon, "DynamicPylon Engine.Default__DynamicPylon")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DynamicPylon.PostBeginPlay")()); }
			ScriptFunction RebuildDynamicEdges() { mixin(MGF!("mRebuildDynamicEdges", "Function Engine.DynamicPylon.RebuildDynamicEdges")()); }
			ScriptFunction FlushDynamicEdges() { mixin(MGF!("mFlushDynamicEdges", "Function Engine.DynamicPylon.FlushDynamicEdges")()); }
			ScriptFunction StartedMoving() { mixin(MGF!("mStartedMoving", "Function Engine.DynamicPylon.StartedMoving")()); }
			ScriptFunction StoppedMoving() { mixin(MGF!("mStoppedMoving", "Function Engine.DynamicPylon.StoppedMoving")()); }
		}
	}
	@property final
	{
		bool bMoving() { mixin(MGBPC!(832, 0x1)()); }
		bool bMoving(bool val) { mixin(MSBPC!(832, 0x1)()); }
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
