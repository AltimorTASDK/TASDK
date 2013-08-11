module UnrealScript.Engine.SeqAct_CameraShake;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraShake : SequenceAction
{
	public @property final bool bRadialShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x2) != 0; }
	public @property final bool bRadialShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x2; } return val; }
	public @property final auto ref Actor LocationActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref CameraShake Shake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float RadialShake_InnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float RadialShake_OuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float RadialShake_Falloff() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final bool bDoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
	public @property final bool bDoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	public @property final bool bOrientTowardRadialEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x4) != 0; }
	public @property final bool bOrientTowardRadialEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x4; } return val; }
	public @property final auto ref float ShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)cast(void*)this + 256); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25635], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
