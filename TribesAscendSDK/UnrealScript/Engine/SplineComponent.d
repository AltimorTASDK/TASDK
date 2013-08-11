module UnrealScript.Engine.SplineComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SplineComponent : PrimitiveComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			UObject.InterpCurveFloat SplineReparamTable() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 524); }
			float SplineArrowSize() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float SplineDrawRes() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			UObject.Color SplineColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 508); }
			float SplineCurviness() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			UObject.InterpCurveVector SplineInfo() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bSplineDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
		bool bSplineDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	}
final:
	void UpdateSplineCurviness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27150], cast(void*)0, cast(void*)0);
	}
	void UpdateSplineReparamTable()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27151], cast(void*)0, cast(void*)0);
	}
	float GetSplineLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27152], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetLocationAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27154], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetTangentAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27157], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
