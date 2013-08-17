module UnrealScript.Engine.SequenceEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceOp;

extern(C++) interface SequenceEvent : SequenceOp
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SequenceEvent")); }
	private static __gshared SequenceEvent mDefaultProperties;
	@property final static SequenceEvent DefaultProperties() { mixin(MGDPC("SequenceEvent", "SequenceEvent Engine.Default__SequenceEvent")); }
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
			ScriptFunction CheckActivate() { mixin(MGF("mCheckActivate", "Function Engine.SequenceEvent.CheckActivate")); }
			ScriptFunction RegisterEvent() { mixin(MGF("mRegisterEvent", "Function Engine.SequenceEvent.RegisterEvent")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.SequenceEvent.Reset")); }
			ScriptFunction Toggled() { mixin(MGF("mToggled", "Function Engine.SequenceEvent.Toggled")); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxTriggerCount() { mixin(MGPC("int", 236)); }
			int TriggerCount() { mixin(MGPC("int", 232)); }
			ScriptArray!(SequenceEvent) DuplicateEvts() { mixin(MGPC("ScriptArray!(SequenceEvent)", 208)); }
			int MaxWidth() { mixin(MGPC("int", 252)); }
			ubyte Priority() { mixin(MGPC("ubyte", 248)); }
			float ReTriggerDelay() { mixin(MGPC("float", 240)); }
			float ActivationTime() { mixin(MGPC("float", 228)); }
			Actor Instigator() { mixin(MGPC("Actor", 224)); }
			Actor Originator() { mixin(MGPC("Actor", 220)); }
		}
		bool bEnabled() { mixin(MGBPC(244, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(244, 0x1)); }
		bool bPlayerOnly() { mixin(MGBPC(244, 0x2)); }
		bool bPlayerOnly(bool val) { mixin(MSBPC(244, 0x2)); }
		bool bClientSideOnly() { mixin(MGBPC(244, 0x8)); }
		bool bClientSideOnly(bool val) { mixin(MSBPC(244, 0x8)); }
		bool bRegistered() { mixin(MGBPC(244, 0x4)); }
		bool bRegistered(bool val) { mixin(MSBPC(244, 0x4)); }
	}
final:
	bool CheckActivate(Actor InOriginator, Actor InInstigator, bool* bTest = null, in ScriptArray!(int)* ActivateIndices = null, bool* bPushTop = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		if (bTest !is null)
			*cast(bool*)&params[8] = *bTest;
		if (ActivateIndices !is null)
			*cast(ScriptArray!(int)*)&params[12] = cast(ScriptArray!(int))*ActivateIndices;
		if (bPushTop !is null)
			*cast(bool*)&params[24] = *bPushTop;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckActivate, params.ptr, cast(void*)0);
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
