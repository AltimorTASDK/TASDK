module UnrealScript.UTGame.UTSeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayCameraAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_PlayCameraAnim")); }
	private static __gshared UTSeqAct_PlayCameraAnim mDefaultProperties;
	@property final static UTSeqAct_PlayCameraAnim DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_PlayCameraAnim)("UTSeqAct_PlayCameraAnim UTGame.Default__UTSeqAct_PlayCameraAnim")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_PlayCameraAnim.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		CameraAnim AnimToPlay() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 232); }
		float IntensityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
