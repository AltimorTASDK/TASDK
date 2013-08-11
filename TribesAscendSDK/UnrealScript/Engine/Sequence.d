module UnrealScript.Engine.Sequence;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface Sequence : SequenceOp
{
public extern(D):
	struct ActivateOp
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float RemainingDelay() { return *cast(float*)(cast(size_t)&this + 12); }
			int InputIdx() { return *cast(int*)(cast(size_t)&this + 8); }
			SequenceOp Op() { return *cast(SequenceOp*)(cast(size_t)&this + 4); }
			SequenceOp ActivatorOp() { return *cast(SequenceOp*)(cast(size_t)&this + 0); }
		}
	}
	struct QueuedActivationInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(int) ActivateIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
				Actor InInstigator() { return *cast(Actor*)(cast(size_t)&this + 8); }
				Actor InOriginator() { return *cast(Actor*)(cast(size_t)&this + 4); }
				SequenceEvent ActivatedEvent() { return *cast(SequenceEvent*)(cast(size_t)&this + 0); }
			}
			bool bPushTop() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bPushTop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SequenceObject) SequenceObjects() { return *cast(ScriptArray!(SequenceObject)*)(cast(size_t)cast(void*)this + 212); }
			ScriptArray!(SequenceOp) ActiveSequenceOps() { return *cast(ScriptArray!(SequenceOp)*)(cast(size_t)cast(void*)this + 224); }
			ScriptArray!(Sequence) NestedSequences() { return *cast(ScriptArray!(Sequence)*)(cast(size_t)cast(void*)this + 236); }
			ScriptArray!(SequenceEvent) UnregisteredEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 248); }
			ScriptArray!(Sequence.ActivateOp) DelayedActivatedOps() { return *cast(ScriptArray!(Sequence.ActivateOp)*)(cast(size_t)cast(void*)this + 260); }
			ScriptArray!(Sequence.QueuedActivationInfo) QueuedActivations() { return *cast(ScriptArray!(Sequence.QueuedActivationInfo)*)(cast(size_t)cast(void*)this + 276); }
			float DefaultViewZoom() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			int DefaultViewY() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
			int DefaultViewX() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
			UObject.Pointer LogFile() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 208); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	}
final:
	void FindSeqObjectsByClass(ScriptClass DesiredClass, bool bRecursive, ScriptArray!(SequenceObject)* OutputObjects)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bRecursive;
		*cast(ScriptArray!(SequenceObject)*)&params[8] = *OutputObjects;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4291], params.ptr, cast(void*)0);
		*OutputObjects = *cast(ScriptArray!(SequenceObject)*)&params[8];
	}
	void FindSeqObjectsByName(ScriptString SeqObjName, bool bCheckComment, ScriptArray!(SequenceObject)* OutputObjects, bool bRecursive)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SeqObjName;
		*cast(bool*)&params[12] = bCheckComment;
		*cast(ScriptArray!(SequenceObject)*)&params[16] = *OutputObjects;
		*cast(bool*)&params[28] = bRecursive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24824], params.ptr, cast(void*)0);
		*OutputObjects = *cast(ScriptArray!(SequenceObject)*)&params[16];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24830], cast(void*)0, cast(void*)0);
	}
	void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24833], params.ptr, cast(void*)0);
	}
}
