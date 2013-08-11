module UnrealScript.Engine.NxForceFieldGeneric;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldGeneric : NxForceField
{
public extern(D):
	enum FFG_ForceFieldCoordinates : ubyte
	{
		FFG_CARTESIAN = 0,
		FFG_SPHERICAL = 1,
		FFG_CYLINDRICAL = 2,
		FFG_TOROIDAL = 3,
		FFG_MAX = 4,
	}
	@property final auto ref
	{
		UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
		float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
		Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 696); }
		Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 684); }
		Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 672); }
		Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 660); }
		Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 648); }
		Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 636); }
		Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 624); }
		Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 612); }
		Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 600); }
		Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 588); }
		Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 576); }
		Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 564); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 560); }
		ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 540); }
		float RoughExtentZ() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		float RoughExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		float RoughExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21201], cast(void*)0, cast(void*)0);
	}
}
