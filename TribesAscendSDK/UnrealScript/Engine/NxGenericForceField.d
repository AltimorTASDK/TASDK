module UnrealScript.Engine.NxGenericForceField;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxGenericForceField : NxForceField
{
public extern(D):
	@property final auto ref
	{
		UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
		float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
		Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
		Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 664); }
		Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
		Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
		Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 628); }
		Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 616); }
		Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
		Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
		Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
		Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
		Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
		Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 544); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 540); }
	}
}
