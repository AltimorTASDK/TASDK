module UnrealScript.TribesGame.TrDaDShell;

import ScriptClasses;
import UnrealScript.Engine.InterpActor;

extern(C++) interface TrDaDShell : InterpActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDShell")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mStartRotation;
			ScriptFunction mStopRotation;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDShell.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDShell.PostBeginPlay")); }
			ScriptFunction StartRotation() { return mStartRotation ? mStartRotation : (mStartRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDShell.StartRotation")); }
			ScriptFunction StopRotation() { return mStopRotation ? mStopRotation : (mStopRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDShell.StopRotation")); }
		}
	}
	@property final
	{
		bool r_bShield0Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x1) != 0; }
		bool r_bShield0Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x1; } return val; }
		bool r_bShield1Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x2) != 0; }
		bool r_bShield1Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x2; } return val; }
		bool r_bShield2Up() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x4) != 0; }
		bool r_bShield2Up(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x4; } return val; }
		bool r_bIsRotating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 588) & 0x8) != 0; }
		bool r_bIsRotating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 588) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 588) &= ~0x8; } return val; }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void StartRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartRotation, cast(void*)0, cast(void*)0);
	}
	void StopRotation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopRotation, cast(void*)0, cast(void*)0);
	}
}
