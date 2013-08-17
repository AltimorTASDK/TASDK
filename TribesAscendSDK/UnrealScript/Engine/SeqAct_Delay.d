module UnrealScript.Engine.SeqAct_Delay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_Delay : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_Delay")()); }
	private static __gshared SeqAct_Delay mDefaultProperties;
	@property final static SeqAct_Delay DefaultProperties() { mixin(MGDPC!(SeqAct_Delay, "SeqAct_Delay Engine.Default__SeqAct_Delay")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReset;
			ScriptFunction mResetDelayActive;
		}
		public @property static final
		{
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.SeqAct_Delay.Reset")()); }
			ScriptFunction ResetDelayActive() { mixin(MGF!("mResetDelayActive", "Function Engine.SeqAct_Delay.ResetDelayActive")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float RemainingTime() { mixin(MGPC!(float, 264)()); }
			float LastUpdateTime() { mixin(MGPC!(float, 260)()); }
			float Duration() { mixin(MGPC!(float, 256)()); }
			float DefaultDuration() { mixin(MGPC!(float, 252)()); }
		}
		bool bStartWillRestart() { mixin(MGBPC!(248, 0x2)()); }
		bool bStartWillRestart(bool val) { mixin(MSBPC!(248, 0x2)()); }
		bool bDelayActive() { mixin(MGBPC!(248, 0x1)()); }
		bool bDelayActive(bool val) { mixin(MSBPC!(248, 0x1)()); }
	}
final:
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ResetDelayActive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetDelayActive, cast(void*)0, cast(void*)0);
	}
}
