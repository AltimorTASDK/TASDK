module UnrealScript.Engine.SeqCond_CompareBool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareBool : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_CompareBool")()); }
	private static __gshared SeqCond_CompareBool mDefaultProperties;
	@property final static SeqCond_CompareBool DefaultProperties() { mixin(MGDPC!(SeqCond_CompareBool, "SeqCond_CompareBool Engine.Default__SeqCond_CompareBool")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqCond_CompareBool.GetObjClassVersion")()); }
	}
	@property final
	{
		bool bResult() { mixin(MGBPC!(208, 0x1)()); }
		bool bResult(bool val) { mixin(MSBPC!(208, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
