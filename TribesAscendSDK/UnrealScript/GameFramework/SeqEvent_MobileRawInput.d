module UnrealScript.GameFramework.SeqEvent_MobileRawInput;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_MobileRawInput : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileRawInput")); }
	private static __gshared SeqEvent_MobileRawInput mDefaultProperties;
	@property final static SeqEvent_MobileRawInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_MobileRawInput)("SeqEvent_MobileRawInput GameFramework.Default__SeqEvent_MobileRawInput")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRegisterEvent;
		public @property static final ScriptFunction RegisterEvent() { return mRegisterEvent ? mRegisterEvent : (mRegisterEvent = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqEvent_MobileRawInput.RegisterEvent")); }
	}
	@property final auto ref
	{
		float TimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float TouchLocationY() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float TouchLocationX() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		int TouchIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
	}
	final void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
}
