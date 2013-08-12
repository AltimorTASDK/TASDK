module UnrealScript.Engine.InterpTrackLinearColorBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackLinearColorBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackLinearColorBase")); }
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveLinearColor LinearColorTrack() { return *cast(UObject.InterpCurveLinearColor*)(cast(size_t)cast(void*)this + 128); }
	}
}
