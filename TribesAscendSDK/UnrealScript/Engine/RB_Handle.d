module UnrealScript.Engine.RB_Handle;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Handle : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_Handle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGrabComponent;
			ScriptFunction mReleaseComponent;
			ScriptFunction mSetLocation;
			ScriptFunction mSetSmoothLocation;
			ScriptFunction mUpdateSmoothLocation;
			ScriptFunction mSetOrientation;
			ScriptFunction mGetOrientation;
		}
		public @property static final
		{
			ScriptFunction GrabComponent() { return mGrabComponent ? mGrabComponent : (mGrabComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.GrabComponent")); }
			ScriptFunction ReleaseComponent() { return mReleaseComponent ? mReleaseComponent : (mReleaseComponent = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.ReleaseComponent")); }
			ScriptFunction SetLocation() { return mSetLocation ? mSetLocation : (mSetLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.SetLocation")); }
			ScriptFunction SetSmoothLocation() { return mSetSmoothLocation ? mSetSmoothLocation : (mSetSmoothLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.SetSmoothLocation")); }
			ScriptFunction UpdateSmoothLocation() { return mUpdateSmoothLocation ? mUpdateSmoothLocation : (mUpdateSmoothLocation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.UpdateSmoothLocation")); }
			ScriptFunction SetOrientation() { return mSetOrientation ? mSetOrientation : (mSetOrientation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.SetOrientation")); }
			ScriptFunction GetOrientation() { return mGetOrientation ? mGetOrientation : (mGetOrientation = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Handle.GetOrientation")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.GrabComponent, params.ptr, cast(void*)0);
	}
	void ReleaseComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseComponent, cast(void*)0, cast(void*)0);
	}
	void SetLocation(Vector NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLocation, params.ptr, cast(void*)0);
	}
	void SetSmoothLocation(Vector NewLocation, float MoveTime)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(float*)&params[12] = MoveTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSmoothLocation, params.ptr, cast(void*)0);
	}
	void UpdateSmoothLocation(Vector* NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = *NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSmoothLocation, params.ptr, cast(void*)0);
		*NewLocation = *cast(Vector*)params.ptr;
	}
	void SetOrientation(UObject.Quat* NewOrientation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = *NewOrientation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOrientation, params.ptr, cast(void*)0);
		*NewOrientation = *cast(UObject.Quat*)params.ptr;
	}
	UObject.Quat GetOrientation()
	{
		ubyte params[16];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrientation, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)params.ptr;
	}
}
