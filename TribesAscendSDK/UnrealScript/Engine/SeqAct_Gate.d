module UnrealScript.Engine.SeqAct_Gate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Gate : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Gate")()); }
	private static __gshared SeqAct_Gate mDefaultProperties;
	@property final static SeqAct_Gate DefaultProperties() { mixin(MGDPC!(SeqAct_Gate, "SeqAct_Gate Engine.Default__SeqAct_Gate")()); }
	@property final
	{
		auto ref
		{
			int CurrentCloseCount() { mixin(MGPC!(int, 240)()); }
			int AutoCloseCount() { mixin(MGPC!(int, 236)()); }
		}
		bool bOpen() { mixin(MGBPC!(232, 0x1)()); }
		bool bOpen(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
