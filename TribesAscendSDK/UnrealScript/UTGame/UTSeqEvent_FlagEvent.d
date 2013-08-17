module UnrealScript.UTGame.UTSeqEvent_FlagEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_FlagEvent : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqEvent_FlagEvent")); }
	private static __gshared UTSeqEvent_FlagEvent mDefaultProperties;
	@property final static UTSeqEvent_FlagEvent DefaultProperties() { mixin(MGDPC("UTSeqEvent_FlagEvent", "UTSeqEvent_FlagEvent UTGame.Default__UTSeqEvent_FlagEvent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTrigger;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Trigger() { mixin(MGF("mTrigger", "Function UTGame.UTSeqEvent_FlagEvent.Trigger")); }
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function UTGame.UTSeqEvent_FlagEvent.GetObjClassVersion")); }
		}
	}
final:
	// WARNING: Function 'Trigger' has the same name as a defined type!
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
