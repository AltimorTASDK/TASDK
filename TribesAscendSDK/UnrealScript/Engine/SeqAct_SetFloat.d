module UnrealScript.Engine.SeqAct_SetFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetFloat")); }
	private static __gshared SeqAct_SetFloat mDefaultProperties;
	@property final static SeqAct_SetFloat DefaultProperties() { mixin(MGDPC("SeqAct_SetFloat", "SeqAct_SetFloat Engine.Default__SeqAct_SetFloat")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_SetFloat.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptArray!(float) Value() { mixin(MGPC("ScriptArray!(float)", 236)); }
		float Target() { mixin(MGPC("float", 232)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
