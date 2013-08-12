module UnrealScript.Engine.SequenceEvent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceEvent : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceEvent")); }
	private static __gshared SequenceEvent mDefaultProperties;
	@property final static SequenceEvent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceEvent)("SequenceEvent Engine.Default__SequenceEvent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckActivate;
			ScriptFunction mRegisterEvent;
			ScriptFunction mReset;
			ScriptFunction mToggled;
		}
		public @property static final
		{
			ScriptFunction CheckActivate() { return mCheckActivate ? mCheckActivate : (mCheckActivate = ScriptObject.Find!(ScriptFunction)("Function Engine.SequenceEvent.CheckActivate")); }
			ScriptFunction RegisterEvent() { return mRegisterEvent ? mRegisterEvent : (mRegisterEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.SequenceEvent.RegisterEvent")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.SequenceEvent.Reset")); }
			ScriptFunction Toggled() { return mToggled ? mToggled : (mToggled = ScriptObject.Find!(ScriptFunction)("Function Engine.SequenceEvent.Toggled")); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxTriggerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
			int TriggerCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
			ScriptArray!(SequenceEvent) DuplicateEvts() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 208); }
			int MaxWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
			ubyte Priority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 248); }
			float ReTriggerDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float ActivationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 224); }
			Actor Originator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 220); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
		bool bPlayerOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
		bool bPlayerOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
		bool bClientSideOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x8) != 0; }
		bool bClientSideOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x8; } return val; }
		bool bRegistered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x4) != 0; }
		bool bRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x4; } return val; }
	}
final:
	bool CheckActivate(Actor InOriginator, Actor InInstigator, bool bTest, ScriptArray!(int)* ActivateIndices, bool bPushTop)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(bool*)&params[8] = bTest;
		*cast(ScriptArray!(int)*)&params[12] = *ActivateIndices;
		*cast(bool*)&params[24] = bPushTop;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckActivate, params.ptr, cast(void*)0);
		*ActivateIndices = *cast(ScriptArray!(int)*)&params[12];
		return *cast(bool*)&params[28];
	}
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Toggled, cast(void*)0, cast(void*)0);
	}
}
