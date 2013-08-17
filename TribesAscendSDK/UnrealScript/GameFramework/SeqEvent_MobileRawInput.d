module UnrealScript.GameFramework.SeqEvent_MobileRawInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_MobileRawInput : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqEvent_MobileRawInput")); }
	private static __gshared SeqEvent_MobileRawInput mDefaultProperties;
	@property final static SeqEvent_MobileRawInput DefaultProperties() { mixin(MGDPC("SeqEvent_MobileRawInput", "SeqEvent_MobileRawInput GameFramework.Default__SeqEvent_MobileRawInput")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRegisterEvent;
		public @property static final ScriptFunction RegisterEvent() { mixin(MGF("mRegisterEvent", "Function GameFramework.SeqEvent_MobileRawInput.RegisterEvent")); }
	}
	@property final auto ref
	{
		float TimeStamp() { mixin(MGPC("float", 268)); }
		float TouchLocationY() { mixin(MGPC("float", 264)); }
		float TouchLocationX() { mixin(MGPC("float", 260)); }
		int TouchIndex() { mixin(MGPC("int", 256)); }
	}
	final void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
}
