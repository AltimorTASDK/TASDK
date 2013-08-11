module UnrealScript.Engine.SeqAct_PlayCameraAnim;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_PlayCameraAnim : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			Actor UserDefinedSpaceActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
			Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)cast(void*)this + 256); }
			float IntensityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float BlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float BlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			// WARNING: Property 'CameraAnim' has the same name as a defined type!
		}
		bool bRandomStartTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bRandomStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bLoop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bLoop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25812], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
