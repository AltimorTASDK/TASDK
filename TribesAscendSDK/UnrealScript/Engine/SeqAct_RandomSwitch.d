module UnrealScript.Engine.SeqAct_RandomSwitch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Switch;

extern(C++) interface SeqAct_RandomSwitch : SeqAct_Switch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_RandomSwitch")()); }
	private static __gshared SeqAct_RandomSwitch mDefaultProperties;
	@property final static SeqAct_RandomSwitch DefaultProperties() { mixin(MGDPC!(SeqAct_RandomSwitch, "SeqAct_RandomSwitch Engine.Default__SeqAct_RandomSwitch")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_RandomSwitch.GetObjClassVersion")()); }
	}
	@property final auto ref ScriptArray!(int) AutoDisabledIndices() { mixin(MGPC!(ScriptArray!(int), 256)()); }
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
