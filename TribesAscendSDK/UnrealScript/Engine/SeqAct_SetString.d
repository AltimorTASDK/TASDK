module UnrealScript.Engine.SeqAct_SetString;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetString : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetString")()); }
	private static __gshared SeqAct_SetString mDefaultProperties;
	@property final static SeqAct_SetString DefaultProperties() { mixin(MGDPC!(SeqAct_SetString, "SeqAct_SetString Engine.Default__SeqAct_SetString")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_SetString.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		ScriptString Value() { mixin(MGPC!("ScriptString", 244)()); }
		ScriptString Target() { mixin(MGPC!("ScriptString", 232)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
