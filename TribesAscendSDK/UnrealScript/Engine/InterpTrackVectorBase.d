module UnrealScript.Engine.InterpTrackVectorBase;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackVectorBase : InterpTrack
{
public extern(D):
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveVector VectorTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 128); }
	}
}
