module UnrealScript.Engine.SeqAct_Log;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Log : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Log")()); }
	private static __gshared SeqAct_Log mDefaultProperties;
	@property final static SeqAct_Log DefaultProperties() { mixin(MGDPC!(SeqAct_Log, "SeqAct_Log Engine.Default__SeqAct_Log")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_Log.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptString LogMessage() { mixin(MGPC!(ScriptString, 252)()); }
			Vector TargetOffset() { mixin(MGPC!(Vector, 240)()); }
			float TargetDuration() { mixin(MGPC!(float, 236)()); }
		}
		bool bIncludeObjComment() { mixin(MGBPC!(232, 0x2)()); }
		bool bIncludeObjComment(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bOutputToScreen() { mixin(MGBPC!(232, 0x1)()); }
		bool bOutputToScreen(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
