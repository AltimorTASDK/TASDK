module UnrealScript.Engine.SeqAct_ConvertToString;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ConvertToString : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ConvertToString")); }
	private static __gshared SeqAct_ConvertToString mDefaultProperties;
	@property final static SeqAct_ConvertToString DefaultProperties() { mixin(MGDPC("SeqAct_ConvertToString", "SeqAct_ConvertToString Engine.Default__SeqAct_ConvertToString")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_ConvertToString.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			int NumberOfInputs() { mixin(MGPC("int", 248)); }
			ScriptString VarSeparator() { mixin(MGPC("ScriptString", 236)); }
		}
		bool bIncludeVarComment() { mixin(MGBPC(232, 0x1)); }
		bool bIncludeVarComment(bool val) { mixin(MSBPC(232, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
