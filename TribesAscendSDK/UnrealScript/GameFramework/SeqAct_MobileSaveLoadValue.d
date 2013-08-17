module UnrealScript.GameFramework.SeqAct_MobileSaveLoadValue;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileSaveLoadValue : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.SeqAct_MobileSaveLoadValue")); }
	private static __gshared SeqAct_MobileSaveLoadValue mDefaultProperties;
	@property final static SeqAct_MobileSaveLoadValue DefaultProperties() { mixin(MGDPC("SeqAct_MobileSaveLoadValue", "SeqAct_MobileSaveLoadValue GameFramework.Default__SeqAct_MobileSaveLoadValue")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function GameFramework.SeqAct_MobileSaveLoadValue.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
