module UnrealScript.Engine.RB_Handle;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Handle : ActorComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 180); }
			Vector StepSize() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
			Vector Destination() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
			float AngularStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float AngularDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			Vector LinearDampingScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 136); }
			Vector LinearStiffnessScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 124); }
			float LinearStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float LinearDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			UObject.Pointer KinActorData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
			UObject.Pointer HandleData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
			ScriptName GrabbedBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bInterpolating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x4) != 0; }
		bool bInterpolating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x4; } return val; }
		bool bRotationConstrained() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bRotationConstrained(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bInHardware() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bInHardware(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
final:
	void GrabComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pComponent, ScriptName InBoneName, Vector GrabLocation, bool bConstrainRotation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pComponent;
		*cast(ScriptName*)&params[4] = InBoneName;
		*cast(Vector*)&params[12] = GrabLocation;
		*cast(bool*)&params[24] = bConstrainRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25251], params.ptr, cast(void*)0);
	}
	void ReleaseComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25256], cast(void*)0, cast(void*)0);
	}
	void SetLocation(Vector NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25257], params.ptr, cast(void*)0);
	}
	void SetSmoothLocation(Vector NewLocation, float MoveTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(float*)&params[12] = MoveTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25259], params.ptr, cast(void*)0);
	}
	void UpdateSmoothLocation(Vector* NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = *NewLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25262], params.ptr, cast(void*)0);
		*NewLocation = *cast(Vector*)params.ptr;
	}
	void SetOrientation(UObject.Quat* NewOrientation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = *NewOrientation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25264], params.ptr, cast(void*)0);
		*NewOrientation = *cast(UObject.Quat*)params.ptr;
	}
	UObject.Quat GetOrientation()
	{
		ubyte params[16];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25266], params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)params.ptr;
	}
}
