module UnrealScript.Engine.NxForceFieldGenericComponent;

import ScriptClasses;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxForceFieldGenericComponent : NxForceFieldComponent
{
	public @property final auto ref UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 668); }
	public @property final auto ref Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 644); }
	public @property final auto ref Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float RoughExtentZ() { return *cast(float*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float RoughExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref float RoughExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 568); }
}
