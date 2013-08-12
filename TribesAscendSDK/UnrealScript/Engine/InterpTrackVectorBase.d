module UnrealScript.Engine.InterpTrackVectorBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackVectorBase : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackVectorBase")); }
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveVector VectorTrack() { return *cast(UObject.InterpCurveVector*)(cast(size_t)cast(void*)this + 128); }
	}
}
