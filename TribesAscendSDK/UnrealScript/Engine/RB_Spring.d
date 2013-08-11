module UnrealScript.Engine.RB_Spring;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Spring : ActorComponent
{
	public @property final auto ref float DampMaxForce() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float DampSaturateVel() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.InterpCurveFloat SpringMaxForceTimeScale() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float MaxForceMassRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float SpringMaxForce() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float SpringSaturateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float MinBodyMass() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float TimeSinceActivation() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer SpringData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	public @property final bool bEnableForceMassRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bEnableForceMassRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bInHardware() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bInHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	public @property final auto ref int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptName BoneName2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptName BoneName1() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 92); }
	final void SetComponents(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* InComponent1, ScriptName InBoneName1, Vector Position1, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* InComponent2, ScriptName InBoneName2, Vector Position2)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = InComponent1;
		*cast(ScriptName*)&params[4] = InBoneName1;
		*cast(Vector*)&params[12] = Position1;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[24] = InComponent2;
		*cast(ScriptName*)&params[28] = InBoneName2;
		*cast(Vector*)&params[36] = Position2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25344], params.ptr, cast(void*)0);
	}
	final void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25351], cast(void*)0, cast(void*)0);
	}
}
