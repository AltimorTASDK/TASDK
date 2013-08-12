module UnrealScript.Engine.FluidInfluenceActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface FluidInfluenceActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FluidInfluenceActor")); }
	private static __gshared FluidInfluenceActor mDefaultProperties;
	@property final static FluidInfluenceActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FluidInfluenceActor)("FluidInfluenceActor Engine.Default__FluidInfluenceActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.FluidInfluenceActor.OnToggle")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.FluidInfluenceActor.ReplicatedEvent")); }
		}
	}
	@property final
	{
		bool bToggled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
		bool bToggled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
		bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
final:
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
}
