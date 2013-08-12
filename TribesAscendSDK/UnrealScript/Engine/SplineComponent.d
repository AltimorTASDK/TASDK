module UnrealScript.Engine.SplineComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SplineComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SplineComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateSplineCurviness;
			ScriptFunction mUpdateSplineReparamTable;
			ScriptFunction mGetSplineLength;
			ScriptFunction mGetLocationAtDistanceAlongSpline;
			ScriptFunction mGetTangentAtDistanceAlongSpline;
		}
		public @property static final
		{
			ScriptFunction UpdateSplineCurviness() { return mUpdateSplineCurviness ? mUpdateSplineCurviness : (mUpdateSplineCurviness = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineComponent.UpdateSplineCurviness")); }
			ScriptFunction UpdateSplineReparamTable() { return mUpdateSplineReparamTable ? mUpdateSplineReparamTable : (mUpdateSplineReparamTable = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineComponent.UpdateSplineReparamTable")); }
			ScriptFunction GetSplineLength() { return mGetSplineLength ? mGetSplineLength : (mGetSplineLength = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineComponent.GetSplineLength")); }
			ScriptFunction GetLocationAtDistanceAlongSpline() { return mGetLocationAtDistanceAlongSpline ? mGetLocationAtDistanceAlongSpline : (mGetLocationAtDistanceAlongSpline = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineComponent.GetLocationAtDistanceAlongSpline")); }
			ScriptFunction GetTangentAtDistanceAlongSpline() { return mGetTangentAtDistanceAlongSpline ? mGetTangentAtDistanceAlongSpline : (mGetTangentAtDistanceAlongSpline = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineComponent.GetTangentAtDistanceAlongSpline")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSplineCurviness, cast(void*)0, cast(void*)0);
	}
	void UpdateSplineReparamTable()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSplineReparamTable, cast(void*)0, cast(void*)0);
	}
	float GetSplineLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSplineLength, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	Vector GetLocationAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationAtDistanceAlongSpline, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
	Vector GetTangentAtDistanceAlongSpline(float Distance)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTangentAtDistanceAlongSpline, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
