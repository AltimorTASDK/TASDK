module UnrealScript.Engine.SkelControlSpline;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlSpline : SkelControlBase
{
	enum ESplineControlRotMode : ubyte
	{
		SCR_NoChange = 0,
		SCR_AlongSpline = 1,
		SCR_Interpolate = 2,
		SCR_MAX = 3,
	}
	public @property final auto ref float StartSplineTension() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float EndSplineTension() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
	public @property final bool bInvertSplineBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
	public @property final bool bInvertSplineBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	public @property final auto ref SkelControlSpline.ESplineControlRotMode BoneRotMode() { return *cast(SkelControlSpline.ESplineControlRotMode*)(cast(size_t)cast(void*)this + 193); }
	public @property final auto ref int SplineLength() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref UObject.EAxis SplineBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 192); }
}
