module UnrealScript.UTGame.UTSkelControl_JetThruster;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_JetThruster : SkelControlSingleBone
{
public extern(D):
	@property final auto ref
	{
		float DesiredStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float BlendRate() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float MaxForwardVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
	final void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49352], params.ptr, cast(void*)0);
	}
}
