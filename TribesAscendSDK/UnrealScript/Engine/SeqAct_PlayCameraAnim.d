module UnrealScript.Engine.SeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayCameraAnim : SequenceAction
{
	public @property final auto ref Actor UserDefinedSpaceActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float IntensityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bRandomStartTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bRandomStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final bool bLoop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	// WARNING: Property 'CameraAnim' has the same name as a defined type!
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25812], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
