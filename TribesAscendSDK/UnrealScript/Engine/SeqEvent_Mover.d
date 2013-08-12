module UnrealScript.Engine.SeqEvent_Mover;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_Mover : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_Mover")); }
	private static __gshared SeqEvent_Mover mDefaultProperties;
	@property final static SeqEvent_Mover DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_Mover)("SeqEvent_Mover Engine.Default__SeqEvent_Mover")); }
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
			ScriptFunction RegisterEvent() { return mRegisterEvent ? mRegisterEvent : (mRegisterEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Mover.RegisterEvent")); }
			ScriptFunction NotifyEncroachingOn() { return mNotifyEncroachingOn ? mNotifyEncroachingOn : (mNotifyEncroachingOn = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Mover.NotifyEncroachingOn")); }
			ScriptFunction NotifyAttached() { return mNotifyAttached ? mNotifyAttached : (mNotifyAttached = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Mover.NotifyAttached")); }
			ScriptFunction NotifyDetached() { return mNotifyDetached ? mNotifyDetached : (mNotifyDetached = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Mover.NotifyDetached")); }
			ScriptFunction NotifyFinishedOpen() { return mNotifyFinishedOpen ? mNotifyFinishedOpen : (mNotifyFinishedOpen = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_Mover.NotifyFinishedOpen")); }
		}
	}
	@property final auto ref float StayOpenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
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
