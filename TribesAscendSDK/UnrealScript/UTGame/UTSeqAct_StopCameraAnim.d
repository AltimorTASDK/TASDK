module UnrealScript.UTGame.UTSeqAct_StopCameraAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_StopCameraAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_StopCameraAnim")()); }
	private static __gshared UTSeqAct_StopCameraAnim mDefaultProperties;
	@property final static UTSeqAct_StopCameraAnim DefaultProperties() { mixin(MGDPC!(UTSeqAct_StopCameraAnim, "UTSeqAct_StopCameraAnim UTGame.Default__UTSeqAct_StopCameraAnim")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function UTGame.UTSeqAct_StopCameraAnim.GetObjClassVersion")()); }
	}
	@property final
	{
		bool bStopImmediately() { mixin(MGBPC!(232, 0x1)()); }
		bool bStopImmediately(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
