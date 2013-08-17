module UnrealScript.TribesGame.TrSeqEvent_StormShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_StormShield : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSeqEvent_StormShield")()); }
	private static __gshared TrSeqEvent_StormShield mDefaultProperties;
	@property final static TrSeqEvent_StormShield DefaultProperties() { mixin(MGDPC!(TrSeqEvent_StormShield, "TrSeqEvent_StormShield TribesGame.Default__TrSeqEvent_StormShield")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function TribesGame.TrSeqEvent_StormShield.GetObjClassVersion")()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
