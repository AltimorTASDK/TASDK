module UnrealScript.Engine.SeqEvent_LevelLoaded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_LevelLoaded : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_LevelLoaded")); }
	private static __gshared SeqEvent_LevelLoaded mDefaultProperties;
	@property final static SeqEvent_LevelLoaded DefaultProperties() { mixin(MGDPC("SeqEvent_LevelLoaded", "SeqEvent_LevelLoaded Engine.Default__SeqEvent_LevelLoaded")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqEvent_LevelLoaded.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
