module UnrealScript.Engine.InterpTrackLinearColorBase;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackLinearColorBase : InterpTrack
{
public extern(D):
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveLinearColor LinearColorTrack() { return *cast(UObject.InterpCurveLinearColor*)(cast(size_t)cast(void*)this + 128); }
	}
}
