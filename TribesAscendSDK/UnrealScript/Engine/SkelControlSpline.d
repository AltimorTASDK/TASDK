module UnrealScript.Engine.SkelControlSpline;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSpline : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlSpline")); }
	private static __gshared SkelControlSpline mDefaultProperties;
	@property final static SkelControlSpline DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControlSpline)("SkelControlSpline Engine.Default__SkelControlSpline")); }
	enum ESplineControlRotMode : ubyte
	{
		SCR_NoChange = 0,
		SCR_AlongSpline = 1,
		SCR_Interpolate = 2,
		SCR_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			float StartSplineTension() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			float EndSplineTension() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			SkelControlSpline.ESplineControlRotMode BoneRotMode() { return *cast(SkelControlSpline.ESplineControlRotMode*)(cast(size_t)cast(void*)this + 193); }
			int SplineLength() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
			UObject.EAxis SplineBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bInvertSplineBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
		bool bInvertSplineBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	}
}
