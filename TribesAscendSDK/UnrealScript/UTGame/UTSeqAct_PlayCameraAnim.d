module UnrealScript.UTGame.UTSeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayCameraAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_PlayCameraAnim")()); }
	private static __gshared UTSeqAct_PlayCameraAnim mDefaultProperties;
	@property final static UTSeqAct_PlayCameraAnim DefaultProperties() { mixin(MGDPC!(UTSeqAct_PlayCameraAnim, "UTSeqAct_PlayCameraAnim UTGame.Default__UTSeqAct_PlayCameraAnim")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function UTGame.UTSeqAct_PlayCameraAnim.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		CameraAnim AnimToPlay() { mixin(MGPC!(CameraAnim, 232)()); }
		float IntensityScale() { mixin(MGPC!(float, 248)()); }
		float Rate() { mixin(MGPC!(float, 244)()); }
		float BlendInTime() { mixin(MGPC!(float, 236)()); }
		float BlendOutTime() { mixin(MGPC!(float, 240)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
