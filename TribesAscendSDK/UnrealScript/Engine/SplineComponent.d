module UnrealScript.Engine.SplineComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SplineComponent : PrimitiveComponent
{
	public @property final auto ref UObject.InterpCurveFloat SplineReparamTable() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 524); }
	public @property final bool bSplineDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
	public @property final bool bSplineDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	public @property final auto ref float SplineArrowSize() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float SplineDrawRes() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref UObject.Color SplineColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float SplineCurviness() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref UObject.InterpCurveVector SplineInfo() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 488); }
	final void UpdateSplineCurviness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27150], cast(void*)0, cast(void*)0);
	}
	final void UpdateSplineReparamTable()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27151], cast(void*)0, cast(void*)0);
	}
	final float GetSplineLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27152], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final Vector GetLocationAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27154], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	final Vector GetTangentAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27157], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
