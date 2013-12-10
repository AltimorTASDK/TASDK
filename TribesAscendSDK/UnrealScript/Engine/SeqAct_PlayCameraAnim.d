module UnrealScript.Engine.SeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayCameraAnim : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_PlayCameraAnim")); }
	private static __gshared SeqAct_PlayCameraAnim mDefaultProperties;
	@property final static SeqAct_PlayCameraAnim DefaultProperties() { mixin(MGDPC("SeqAct_PlayCameraAnim", "SeqAct_PlayCameraAnim Engine.Default__SeqAct_PlayCameraAnim")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_PlayCameraAnim.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			Actor UserDefinedSpaceActor() { mixin(MGPC("Actor", 260)); }
			Camera.ECameraAnimPlaySpace PlaySpace() { mixin(MGPC("Camera.ECameraAnimPlaySpace", 256)); }
			float IntensityScale() { mixin(MGPC("float", 252)); }
			float Rate() { mixin(MGPC("float", 248)); }
			float BlendOutTime() { mixin(MGPC("float", 244)); }
			float BlendInTime() { mixin(MGPC("float", 240)); }
			CameraAnim CameraAnimVar() { mixin(MGPC("CameraAnim", 232)); }
		}
		bool bRandomStartTime() { mixin(MGBPC(236, 0x2)); }
		bool bRandomStartTime(bool val) { mixin(MSBPC(236, 0x2)); }
		bool bLoop() { mixin(MGBPC(236, 0x1)); }
		bool bLoop(bool val) { mixin(MSBPC(236, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
