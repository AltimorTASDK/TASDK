module UnrealScript.Engine.SeqAct_SetCameraTarget;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetCameraTarget : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		Actor CameraTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
		Camera.ViewTargetTransitionParams TransitionParams() { return *cast(Camera.ViewTargetTransitionParams*)(cast(size_t)cast(void*)this + 236); }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25853], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
