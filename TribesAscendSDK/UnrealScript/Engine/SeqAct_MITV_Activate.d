module UnrealScript.Engine.SeqAct_MITV_Activate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MITV_Activate : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_MITV_Activate")()); }
	private static __gshared SeqAct_MITV_Activate mDefaultProperties;
	@property final static SeqAct_MITV_Activate DefaultProperties() { mixin(MGDPC!(SeqAct_MITV_Activate, "SeqAct_MITV_Activate Engine.Default__SeqAct_MITV_Activate")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mActivated;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_MITV_Activate.GetObjClassVersion")()); }
			ScriptFunction Activated() { mixin(MGF!("mActivated", "Function Engine.SeqAct_MITV_Activate.Activated")()); }
		}
	}
	@property final auto ref float DurationOfMITV() { mixin(MGPC!(float, 232)()); }
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
