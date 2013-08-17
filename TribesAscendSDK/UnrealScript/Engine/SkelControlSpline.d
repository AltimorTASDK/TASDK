module UnrealScript.Engine.SkelControlSpline;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSpline : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SkelControlSpline")); }
	private static __gshared SkelControlSpline mDefaultProperties;
	@property final static SkelControlSpline DefaultProperties() { mixin(MGDPC("SkelControlSpline", "SkelControlSpline Engine.Default__SkelControlSpline")); }
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
			float StartSplineTension() { mixin(MGPC("float", 204)); }
			float EndSplineTension() { mixin(MGPC("float", 200)); }
			SkelControlSpline.ESplineControlRotMode BoneRotMode() { mixin(MGPC("SkelControlSpline.ESplineControlRotMode", 193)); }
			int SplineLength() { mixin(MGPC("int", 188)); }
			UObject.EAxis SplineBoneAxis() { mixin(MGPC("UObject.EAxis", 192)); }
		}
		bool bInvertSplineBoneAxis() { mixin(MGBPC(196, 0x1)); }
		bool bInvertSplineBoneAxis(bool val) { mixin(MSBPC(196, 0x1)); }
	}
}
