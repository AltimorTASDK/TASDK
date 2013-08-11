module UnrealScript.UTGame.UTSeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayCameraAnim : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		CameraAnim AnimToPlay() { return *cast(CameraAnim*)(cast(size_t)cast(void*)this + 232); }
		float IntensityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49115], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
