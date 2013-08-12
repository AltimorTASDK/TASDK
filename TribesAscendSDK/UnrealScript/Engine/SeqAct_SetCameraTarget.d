module UnrealScript.Engine.SeqAct_SetCameraTarget;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetCameraTarget : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetCameraTarget")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetCameraTarget.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		Actor CameraTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
		Camera.ViewTargetTransitionParams TransitionParams() { return *cast(Camera.ViewTargetTransitionParams*)(cast(size_t)cast(void*)this + 236); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
