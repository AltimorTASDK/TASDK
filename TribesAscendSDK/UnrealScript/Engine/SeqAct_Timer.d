module UnrealScript.Engine.SeqAct_Timer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Timer : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Timer")()); }
	private static __gshared SeqAct_Timer mDefaultProperties;
	@property final static SeqAct_Timer DefaultProperties() { mixin(MGDPC!(SeqAct_Timer, "SeqAct_Timer Engine.Default__SeqAct_Timer")()); }
	@property final auto ref
	{
		float Time() { mixin(MGPC!(float, 236)()); }
		float ActivationTime() { mixin(MGPC!(float, 232)()); }
	}
}
