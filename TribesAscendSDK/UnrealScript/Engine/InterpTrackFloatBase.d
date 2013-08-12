module UnrealScript.Engine.InterpTrackFloatBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFloatBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackFloatBase")); }
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveFloat FloatTrack() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 128); }
	}
}
