module UnrealScript.Engine.RB_LineImpulseActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_LineImpulseActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_LineImpulseActor")); }
	private static __gshared RB_LineImpulseActor mDefaultProperties;
	@property final static RB_LineImpulseActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_LineImpulseActor)("RB_LineImpulseActor Engine.Default__RB_LineImpulseActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFireLineImpulse;
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
		}
		public @property static final
		{
			ScriptFunction FireLineImpulse() { return mFireLineImpulse ? mFireLineImpulse : (mFireLineImpulse = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_LineImpulseActor.FireLineImpulse")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_LineImpulseActor.OnToggle")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_LineImpulseActor.ReplicatedEvent")); }
		}
	}
	@property final
	{
		auto ref
		{
			ubyte ImpulseCount() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 492); }
			float ImpulseRange() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float ImpulseStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bCauseFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
		bool bCauseFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
		bool bStopAtFirstHit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
		bool bStopAtFirstHit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
		bool bVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool bVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	}
final:
	void FireLineImpulse()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireLineImpulse, cast(void*)0, cast(void*)0);
	}
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
