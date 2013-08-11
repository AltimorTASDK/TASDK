module UnrealScript.UTGame.UTSkelControl_CicadaEngine;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_CicadaEngine : SkelControlSingleBone
{
	public @property final auto ref int DesiredPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float LastThrust() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float PitchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float MaxVelocityPitchRateMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float MinVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float MaxVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float PitchRate() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float BackPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float ForwardPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	final void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49304], params.ptr, cast(void*)0);
	}
}
