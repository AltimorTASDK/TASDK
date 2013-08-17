module UnrealScript.Engine.SeqAct_SetCameraTarget;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetCameraTarget : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetCameraTarget")()); }
	private static __gshared SeqAct_SetCameraTarget mDefaultProperties;
	@property final static SeqAct_SetCameraTarget DefaultProperties() { mixin(MGDPC!(SeqAct_SetCameraTarget, "SeqAct_SetCameraTarget Engine.Default__SeqAct_SetCameraTarget")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_SetCameraTarget.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		Actor CameraTarget() { mixin(MGPC!(Actor, 232)()); }
		Camera.ViewTargetTransitionParams TransitionParams() { mixin(MGPC!(Camera.ViewTargetTransitionParams, 236)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
