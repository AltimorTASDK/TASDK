module UnrealScript.Engine.SeqAct_SetInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetInt")); }
	private static __gshared SeqAct_SetInt mDefaultProperties;
	@property final static SeqAct_SetInt DefaultProperties() { mixin(MGDPC("SeqAct_SetInt", "SeqAct_SetInt Engine.Default__SeqAct_SetInt")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_SetInt.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptArray!(int) Value() { mixin(MGPC("ScriptArray!(int)", 236)); }
		int Target() { mixin(MGPC("int", 232)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
