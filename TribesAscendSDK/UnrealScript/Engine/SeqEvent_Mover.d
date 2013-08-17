module UnrealScript.Engine.SeqEvent_Mover;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Mover : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_Mover")()); }
	private static __gshared SeqEvent_Mover mDefaultProperties;
	@property final static SeqEvent_Mover DefaultProperties() { mixin(MGDPC!(SeqEvent_Mover, "SeqEvent_Mover Engine.Default__SeqEvent_Mover")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRegisterEvent;
			ScriptFunction mNotifyEncroachingOn;
			ScriptFunction mNotifyAttached;
			ScriptFunction mNotifyDetached;
			ScriptFunction mNotifyFinishedOpen;
		}
		public @property static final
		{
			ScriptFunction RegisterEvent() { mixin(MGF!("mRegisterEvent", "Function Engine.SeqEvent_Mover.RegisterEvent")()); }
			ScriptFunction NotifyEncroachingOn() { mixin(MGF!("mNotifyEncroachingOn", "Function Engine.SeqEvent_Mover.NotifyEncroachingOn")()); }
			ScriptFunction NotifyAttached() { mixin(MGF!("mNotifyAttached", "Function Engine.SeqEvent_Mover.NotifyAttached")()); }
			ScriptFunction NotifyDetached() { mixin(MGF!("mNotifyDetached", "Function Engine.SeqEvent_Mover.NotifyDetached")()); }
			ScriptFunction NotifyFinishedOpen() { mixin(MGF!("mNotifyFinishedOpen", "Function Engine.SeqEvent_Mover.NotifyFinishedOpen")()); }
		}
	}
	@property final auto ref float StayOpenTime() { mixin(MGPC!(float, 256)()); }
final:
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
	void NotifyEncroachingOn(Actor Hit)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Hit;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyEncroachingOn, params.ptr, cast(void*)0);
	}
	void NotifyAttached(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyAttached, params.ptr, cast(void*)0);
	}
	void NotifyDetached(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyDetached, params.ptr, cast(void*)0);
	}
	void NotifyFinishedOpen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyFinishedOpen, cast(void*)0, cast(void*)0);
	}
}
