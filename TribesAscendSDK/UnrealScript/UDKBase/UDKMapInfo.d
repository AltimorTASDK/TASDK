module UnrealScript.UDKBase.UDKMapInfo;

import UnrealScript.Engine.MapInfo;

extern(C++) interface UDKMapInfo : MapInfo
{
public extern(D):
	@property final auto ref float VisibilityModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
