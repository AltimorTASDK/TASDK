module UnrealScript.Engine.Sequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface Sequence : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Sequence")); }
	private static __gshared Sequence mDefaultProperties;
	@property final static Sequence DefaultProperties() { mixin(MGDPC("Sequence", "Sequence Engine.Default__Sequence")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindSeqObjectsByClass;
			ScriptFunction mFindSeqObjectsByName;
			ScriptFunction mReset;
			ScriptFunction mSetEnabled;
		}
		public @property static final
		{
			ScriptFunction FindSeqObjectsByClass() { mixin(MGF("mFindSeqObjectsByClass", "Function Engine.Sequence.FindSeqObjectsByClass")); }
			ScriptFunction FindSeqObjectsByName() { mixin(MGF("mFindSeqObjectsByName", "Function Engine.Sequence.FindSeqObjectsByName")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.Sequence.Reset")); }
			ScriptFunction SetEnabled() { mixin(MGF("mSetEnabled", "Function Engine.Sequence.SetEnabled")); }
		}
	}
	struct ActivateOp
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Sequence.ActivateOp")); }
		@property final auto ref
		{
			float RemainingDelay() { mixin(MGPS("float", 12)); }
			int InputIdx() { mixin(MGPS("int", 8)); }
			SequenceOp Op() { mixin(MGPS("SequenceOp", 4)); }
			SequenceOp ActivatorOp() { mixin(MGPS("SequenceOp", 0)); }
		}
	}
	struct QueuedActivationInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Sequence.QueuedActivationInfo")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(int) ActivateIndices() { mixin(MGPS("ScriptArray!(int)", 12)); }
				Actor InInstigator() { mixin(MGPS("Actor", 8)); }
				Actor InOriginator() { mixin(MGPS("Actor", 4)); }
				SequenceEvent ActivatedEvent() { mixin(MGPS("SequenceEvent", 0)); }
			}
			bool bPushTop() { mixin(MGBPS(24, 0x1)); }
			bool bPushTop(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SequenceObject) SequenceObjects() { mixin(MGPC("ScriptArray!(SequenceObject)", 212)); }
			ScriptArray!(SequenceOp) ActiveSequenceOps() { mixin(MGPC("ScriptArray!(SequenceOp)", 224)); }
			ScriptArray!(Sequence) NestedSequences() { mixin(MGPC("ScriptArray!(Sequence)", 236)); }
			ScriptArray!(SequenceEvent) UnregisteredEvents() { mixin(MGPC("ScriptArray!(SequenceEvent)", 248)); }
			ScriptArray!(Sequence.ActivateOp) DelayedActivatedOps() { mixin(MGPC("ScriptArray!(Sequence.ActivateOp)", 260)); }
			ScriptArray!(Sequence.QueuedActivationInfo) QueuedActivations() { mixin(MGPC("ScriptArray!(Sequence.QueuedActivationInfo)", 276)); }
			float DefaultViewZoom() { mixin(MGPC("float", 296)); }
			int DefaultViewY() { mixin(MGPC("int", 292)); }
			int DefaultViewX() { mixin(MGPC("int", 288)); }
			Pointer LogFile() { mixin(MGPC("Pointer", 208)); }
		}
		bool bEnabled() { mixin(MGBPC(272, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(272, 0x1)); }
	}
final:
	void FindSeqObjectsByClass(ScriptClass DesiredClass, bool bRecursive, ref ScriptArray!(SequenceObject) OutputObjects)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bRecursive;
		*cast(ScriptArray!(SequenceObject)*)&params[8] = OutputObjects;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSeqObjectsByClass, params.ptr, cast(void*)0);
		OutputObjects = *cast(ScriptArray!(SequenceObject)*)&params[8];
	}
	void FindSeqObjectsByName(ScriptString SeqObjName, bool bCheckComment, ref ScriptArray!(SequenceObject) OutputObjects, bool* bRecursive = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SeqObjName;
		*cast(bool*)&params[12] = bCheckComment;
		*cast(ScriptArray!(SequenceObject)*)&params[16] = OutputObjects;
		if (bRecursive !is null)
			*cast(bool*)&params[28] = *bRecursive;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindSeqObjectsByName, params.ptr, cast(void*)0);
		OutputObjects = *cast(ScriptArray!(SequenceObject)*)&params[16];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void SetEnabled(bool bInEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
