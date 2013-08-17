module UnrealScript.Engine.SeqAct_AndGate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AndGate : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AndGate")()); }
	private static __gshared SeqAct_AndGate mDefaultProperties;
	@property final static SeqAct_AndGate DefaultProperties() { mixin(MGDPC!(SeqAct_AndGate, "SeqAct_AndGate Engine.Default__SeqAct_AndGate")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(bool) LinkedOutputFiredStatus() { mixin(MGPC!("ScriptArray!(bool)", 236)()); }
			ScriptArray!(UObject.Pointer) LinkedOutputs() { mixin(MGPC!("ScriptArray!(UObject.Pointer)", 248)()); }
		}
		bool bOpen() { mixin(MGBPC!(232, 0x1)()); }
		bool bOpen(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
