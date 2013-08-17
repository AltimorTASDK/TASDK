module UnrealScript.Engine.SeqCond_IsPIE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsPIE : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_IsPIE")); }
	private static __gshared SeqCond_IsPIE mDefaultProperties;
	@property final static SeqCond_IsPIE DefaultProperties() { mixin(MGDPC("SeqCond_IsPIE", "SeqCond_IsPIE Engine.Default__SeqCond_IsPIE")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqCond_IsPIE.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
