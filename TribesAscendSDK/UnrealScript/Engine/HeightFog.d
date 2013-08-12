module UnrealScript.Engine.HeightFog;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Info;

extern(C++) interface HeightFog : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.HeightFog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.HeightFog.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.HeightFog.ReplicatedEvent")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.HeightFog.OnToggle")); }
		}
	}
	@property final
	{
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
