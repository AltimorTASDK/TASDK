module UnrealScript.Engine.SeqEvent_LOS;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LOS : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_LOS")()); }
	private static __gshared SeqEvent_LOS mDefaultProperties;
	@property final static SeqEvent_LOS DefaultProperties() { mixin(MGDPC!(SeqEvent_LOS, "SeqEvent_LOS Engine.Default__SeqEvent_LOS")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqEvent_LOS.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			float TriggerDistance() { mixin(MGPC!(float, 260)()); }
			float ScreenCenterDistance() { mixin(MGPC!(float, 256)()); }
		}
		bool bCheckForObstructions() { mixin(MGBPC!(264, 0x1)()); }
		bool bCheckForObstructions(bool val) { mixin(MSBPC!(264, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
