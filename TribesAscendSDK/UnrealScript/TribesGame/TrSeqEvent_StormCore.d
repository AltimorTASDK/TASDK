module UnrealScript.TribesGame.TrSeqEvent_StormCore;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_StormCore : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqEvent_StormCore")); }
	private static __gshared TrSeqEvent_StormCore mDefaultProperties;
	@property final static TrSeqEvent_StormCore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqEvent_StormCore)("TrSeqEvent_StormCore TribesGame.Default__TrSeqEvent_StormCore")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSeqEvent_StormCore.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
