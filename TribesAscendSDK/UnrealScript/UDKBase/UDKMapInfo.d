module UnrealScript.UDKBase.UDKMapInfo;

import UnrealScript.Engine.MapInfo;

extern(C++) interface UDKMapInfo : MapInfo
{
	public @property final auto ref float VisibilityModifier() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
