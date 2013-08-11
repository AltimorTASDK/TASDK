module UnrealScript.Engine.NxGenericForceField;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxGenericForceField : NxForceField
{
	public @property final auto ref UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 688); }
	public @property final auto ref Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 664); }
	public @property final auto ref Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 628); }
	public @property final auto ref Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 540); }
}
