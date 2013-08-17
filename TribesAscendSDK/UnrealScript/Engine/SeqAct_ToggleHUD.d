module UnrealScript.Engine.SeqAct_ToggleHUD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleHUD : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ToggleHUD")()); }
	private static __gshared SeqAct_ToggleHUD mDefaultProperties;
	@property final static SeqAct_ToggleHUD DefaultProperties() { mixin(MGDPC!(SeqAct_ToggleHUD, "SeqAct_ToggleHUD Engine.Default__SeqAct_ToggleHUD")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_ToggleHUD.GetObjClassVersion")()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
