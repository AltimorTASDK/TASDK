module UnrealScript.UTGame.UTSkelControl_Oscillate;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_Oscillate : SkelControlSingleBone
{
	public @property final bool bReverseDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool bReverseDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final auto ref float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float Period() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref Vector MaxDelta() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49375], params.ptr, cast(void*)0);
	}
}
