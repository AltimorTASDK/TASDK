module UnrealScript.Engine.RB_Spring;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Spring : ActorComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			float DampMaxForce() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float DampSaturateVel() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			UObject.InterpCurveFloat SpringMaxForceTimeScale() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 144); }
			float MaxForceMassRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float SpringMaxForce() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float SpringSaturateDist() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float MinBodyMass() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float TimeSinceActivation() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			UObject.Pointer SpringData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			ScriptName BoneName2() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
			ScriptName BoneName1() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bEnableForceMassRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bEnableForceMassRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bInHardware() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bInHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
final:
	void SetComponents(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent1, ScriptName InBoneName1, Vector Position1, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* InComponent2, ScriptName InBoneName2, Vector Position2)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = InComponent1;
		*cast(ScriptName*)&params[4] = InBoneName1;
		*cast(Vector*)&params[12] = Position1;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[24] = InComponent2;
		*cast(ScriptName*)&params[28] = InBoneName2;
		*cast(Vector*)&params[36] = Position2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25344], params.ptr, cast(void*)0);
	}
	void Clear()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25351], cast(void*)0, cast(void*)0);
	}
}
