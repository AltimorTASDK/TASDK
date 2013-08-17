module UnrealScript.Engine.SplineComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SplineComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SplineComponent")()); }
	private static __gshared SplineComponent mDefaultProperties;
	@property final static SplineComponent DefaultProperties() { mixin(MGDPC!(SplineComponent, "SplineComponent Engine.Default__SplineComponent")()); }
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
			ScriptFunction UpdateSplineCurviness() { mixin(MGF!("mUpdateSplineCurviness", "Function Engine.SplineComponent.UpdateSplineCurviness")()); }
			ScriptFunction UpdateSplineReparamTable() { mixin(MGF!("mUpdateSplineReparamTable", "Function Engine.SplineComponent.UpdateSplineReparamTable")()); }
			ScriptFunction GetSplineLength() { mixin(MGF!("mGetSplineLength", "Function Engine.SplineComponent.GetSplineLength")()); }
			ScriptFunction GetLocationAtDistanceAlongSpline() { mixin(MGF!("mGetLocationAtDistanceAlongSpline", "Function Engine.SplineComponent.GetLocationAtDistanceAlongSpline")()); }
			ScriptFunction GetTangentAtDistanceAlongSpline() { mixin(MGF!("mGetTangentAtDistanceAlongSpline", "Function Engine.SplineComponent.GetTangentAtDistanceAlongSpline")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.InterpCurveFloat SplineReparamTable() { mixin(MGPC!("UObject.InterpCurveFloat", 524)()); }
			float SplineArrowSize() { mixin(MGPC!("float", 516)()); }
			float SplineDrawRes() { mixin(MGPC!("float", 512)()); }
			UObject.Color SplineColor() { mixin(MGPC!("UObject.Color", 508)()); }
			float SplineCurviness() { mixin(MGPC!("float", 504)()); }
			UObject.InterpCurveVector SplineInfo() { mixin(MGPC!("UObject.InterpCurveVector", 488)()); }
		}
		bool bSplineDisabled() { mixin(MGBPC!(520, 0x1)()); }
		bool bSplineDisabled(bool val) { mixin(MSBPC!(520, 0x1)()); }
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
