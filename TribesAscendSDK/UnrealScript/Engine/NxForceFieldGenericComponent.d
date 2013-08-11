module UnrealScript.Engine.NxForceFieldGenericComponent;

import ScriptClasses;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxForceFieldGenericComponent : NxForceFieldComponent
{
public extern(D):
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 732); }
		float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
		Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 716); }
		Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 704); }
		Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 692); }
		Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 680); }
		Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 668); }
		Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 656); }
		Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 644); }
		Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 632); }
		Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 620); }
		Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 608); }
		Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
		Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 584); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 580); }
		float RoughExtentZ() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
		float RoughExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
		float RoughExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
	}
}
