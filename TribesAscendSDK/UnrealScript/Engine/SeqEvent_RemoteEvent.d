module UnrealScript.Engine.SeqEvent_RemoteEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_RemoteEvent : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_RemoteEvent")()); }
	private static __gshared SeqEvent_RemoteEvent mDefaultProperties;
	@property final static SeqEvent_RemoteEvent DefaultProperties() { mixin(MGDPC!(SeqEvent_RemoteEvent, "SeqEvent_RemoteEvent Engine.Default__SeqEvent_RemoteEvent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqEvent_RemoteEvent.GetObjClassVersion")()); }
	}
	@property final
	{
		@property final auto ref ScriptName EventName() { mixin(MGPC!("ScriptName", 256)()); }
		bool bStatusIsOk() { mixin(MGBPC!(264, 0x1)()); }
		bool bStatusIsOk(bool val) { mixin(MSBPC!(264, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
