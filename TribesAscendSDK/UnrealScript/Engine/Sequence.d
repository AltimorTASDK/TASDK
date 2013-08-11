module UnrealScript.Engine.Sequence;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface Sequence : SequenceOp
{
	struct ActivateOp
	{
		public @property final auto ref float RemainingDelay() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __RemainingDelay[4];
		public @property final auto ref int InputIdx() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __InputIdx[4];
		public @property final auto ref SequenceOp Op() { return *cast(SequenceOp*)(cast(size_t)&this + 4); }
		private ubyte __Op[4];
		public @property final auto ref SequenceOp ActivatorOp() { return *cast(SequenceOp*)(cast(size_t)&this + 0); }
		private ubyte __ActivatorOp[4];
	}
	struct QueuedActivationInfo
	{
		public @property final auto ref ScriptArray!(int) ActivateIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		private ubyte __ActivateIndices[12];
		public @property final bool bPushTop() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bPushTop(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bPushTop[4];
		public @property final auto ref Actor InInstigator() { return *cast(Actor*)(cast(size_t)&this + 8); }
		private ubyte __InInstigator[4];
		public @property final auto ref Actor InOriginator() { return *cast(Actor*)(cast(size_t)&this + 4); }
		private ubyte __InOriginator[4];
		public @property final auto ref SequenceEvent ActivatedEvent() { return *cast(SequenceEvent*)(cast(size_t)&this + 0); }
		private ubyte __ActivatedEvent[4];
	}
	public @property final auto ref ScriptArray!(SequenceObject) SequenceObjects() { return *cast(ScriptArray!(SequenceObject)*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptArray!(SequenceOp) ActiveSequenceOps() { return *cast(ScriptArray!(SequenceOp)*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptArray!(Sequence) NestedSequences() { return *cast(ScriptArray!(Sequence)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptArray!(SequenceEvent) UnregisteredEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptArray!(Sequence.ActivateOp) DelayedActivatedOps() { return *cast(ScriptArray!(Sequence.ActivateOp)*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptArray!(Sequence.QueuedActivationInfo) QueuedActivations() { return *cast(ScriptArray!(Sequence.QueuedActivationInfo)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float DefaultViewZoom() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref int DefaultViewY() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref int DefaultViewX() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer LogFile() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 208); }
	final void FindSeqObjectsByClass(ScriptClass DesiredClass, bool bRecursive, ScriptArray!(SequenceObject)* OutputObjects)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bRecursive;
		*cast(ScriptArray!(SequenceObject)*)&params[8] = *OutputObjects;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4291], params.ptr, cast(void*)0);
		*OutputObjects = *cast(ScriptArray!(SequenceObject)*)&params[8];
	}
	final void FindSeqObjectsByName(ScriptString SeqObjName, bool bCheckComment, ScriptArray!(SequenceObject)* OutputObjects, bool bRecursive)
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
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24830], cast(void*)0, cast(void*)0);
	}
	final void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24833], params.ptr, cast(void*)0);
	}
}
