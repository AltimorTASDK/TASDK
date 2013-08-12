module UnrealScript.TribesGame.TrSeqEvent_StormControlPoint;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface TrSeqEvent_StormControlPoint : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqEvent_StormControlPoint")); }
	private static __gshared TrSeqEvent_StormControlPoint mDefaultProperties;
	@property final static TrSeqEvent_StormControlPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSeqEvent_StormControlPoint)("TrSeqEvent_StormControlPoint TribesGame.Default__TrSeqEvent_StormControlPoint")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSeqEvent_StormControlPoint.GetObjClassVersion")); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
