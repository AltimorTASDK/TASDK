module UnrealScript.Engine.SeqAct_ModifyHealth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyHealth : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ModifyHealth")()); }
	private static __gshared SeqAct_ModifyHealth mDefaultProperties;
	@property final static SeqAct_ModifyHealth DefaultProperties() { mixin(MGDPC!(SeqAct_ModifyHealth, "SeqAct_ModifyHealth Engine.Default__SeqAct_ModifyHealth")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_ModifyHealth.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			Actor Instigator() { mixin(MGPC!(Actor, 252)()); }
			float Amount() { mixin(MGPC!(float, 240)()); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			float Momentum() { mixin(MGPC!(float, 236)()); }
			float Radius() { mixin(MGPC!(float, 244)()); }
		}
		bool bHeal() { mixin(MGBPC!(248, 0x1)()); }
		bool bHeal(bool val) { mixin(MSBPC!(248, 0x1)()); }
		bool bFalloff() { mixin(MGBPC!(248, 0x4)()); }
		bool bFalloff(bool val) { mixin(MSBPC!(248, 0x4)()); }
		bool bRadial() { mixin(MGBPC!(248, 0x2)()); }
		bool bRadial(bool val) { mixin(MSBPC!(248, 0x2)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
