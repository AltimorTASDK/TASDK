module UnrealScript.Engine.NxForceFieldGeneric;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldGeneric : NxForceField
{
	enum FFG_ForceFieldCoordinates : ubyte
	{
		FFG_CARTESIAN = 0,
		FFG_SPHERICAL = 1,
		FFG_CYLINDRICAL = 2,
		FFG_TOROIDAL = 3,
		FFG_MAX = 4,
	}
	public @property final auto ref UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float TorusRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
	public @property final auto ref Vector FalloffQuadratic() { return *cast(Vector*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref Vector FalloffLinear() { return *cast(Vector*)(cast(size_t)cast(void*)this + 684); }
	public @property final auto ref Vector Noise() { return *cast(Vector*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref Vector VelocityTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref Vector VelocityMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref Vector VelocityMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref Vector VelocityMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref Vector PositionTarget() { return *cast(Vector*)(cast(size_t)cast(void*)this + 612); }
	public @property final auto ref Vector PositionMultiplierZ() { return *cast(Vector*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref Vector PositionMultiplierY() { return *cast(Vector*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref Vector PositionMultiplierX() { return *cast(Vector*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { return *cast(NxForceFieldGeneric.FFG_ForceFieldCoordinates*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref float RoughExtentZ() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref float RoughExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref float RoughExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21201], cast(void*)0, cast(void*)0);
	}
}
