module UnrealScript.Engine.RB_Handle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface RB_Handle : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_Handle")()); }
	private static __gshared RB_Handle mDefaultProperties;
	@property final static RB_Handle DefaultProperties() { mixin(MGDPC!(RB_Handle, "RB_Handle Engine.Default__RB_Handle")()); }
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
			ScriptFunction GrabComponent() { mixin(MGF!("mGrabComponent", "Function Engine.RB_Handle.GrabComponent")()); }
			ScriptFunction ReleaseComponent() { mixin(MGF!("mReleaseComponent", "Function Engine.RB_Handle.ReleaseComponent")()); }
			ScriptFunction SetLocation() { mixin(MGF!("mSetLocation", "Function Engine.RB_Handle.SetLocation")()); }
			ScriptFunction SetSmoothLocation() { mixin(MGF!("mSetSmoothLocation", "Function Engine.RB_Handle.SetSmoothLocation")()); }
			ScriptFunction UpdateSmoothLocation() { mixin(MGF!("mUpdateSmoothLocation", "Function Engine.RB_Handle.UpdateSmoothLocation")()); }
			ScriptFunction SetOrientation() { mixin(MGF!("mSetOrientation", "Function Engine.RB_Handle.SetOrientation")()); }
			ScriptFunction GetOrientation() { mixin(MGF!("mGetOrientation", "Function Engine.RB_Handle.GetOrientation")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector Location() { mixin(MGPC!("Vector", 180)()); }
			Vector StepSize() { mixin(MGPC!("Vector", 168)()); }
			Vector Destination() { mixin(MGPC!("Vector", 156)()); }
			float AngularStiffness() { mixin(MGPC!("float", 152)()); }
			float AngularDamping() { mixin(MGPC!("float", 148)()); }
			Vector LinearDampingScale3D() { mixin(MGPC!("Vector", 136)()); }
			Vector LinearStiffnessScale3D() { mixin(MGPC!("Vector", 124)()); }
			float LinearStiffness() { mixin(MGPC!("float", 120)()); }
			float LinearDamping() { mixin(MGPC!("float", 116)()); }
			UObject.Pointer KinActorData() { mixin(MGPC!("UObject.Pointer", 112)()); }
			UObject.Pointer HandleData() { mixin(MGPC!("UObject.Pointer", 108)()); }
			int SceneIndex() { mixin(MGPC!("int", 100)()); }
			ScriptName GrabbedBoneName() { mixin(MGPC!("ScriptName", 92)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'GrabbedComponent'!
		}
		bool bInterpolating() { mixin(MGBPC!(104, 0x4)()); }
		bool bInterpolating(bool val) { mixin(MSBPC!(104, 0x4)()); }
		bool bRotationConstrained() { mixin(MGBPC!(104, 0x2)()); }
		bool bRotationConstrained(bool val) { mixin(MSBPC!(104, 0x2)()); }
		bool bInHardware() { mixin(MGBPC!(104, 0x1)()); }
		bool bInHardware(bool val) { mixin(MSBPC!(104, 0x1)()); }
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
	void UpdateSmoothLocation(ref in Vector NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = cast(Vector)NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSmoothLocation, params.ptr, cast(void*)0);
	}
	void SetOrientation(ref in UObject.Quat NewOrientation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Quat*)params.ptr = cast(UObject.Quat)NewOrientation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOrientation, params.ptr, cast(void*)0);
	}
	UObject.Quat GetOrientation()
	{
		ubyte params[16];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOrientation, params.ptr, cast(void*)0);
		return *cast(UObject.Quat*)params.ptr;
	}
}
