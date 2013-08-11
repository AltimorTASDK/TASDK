module UnrealScript.Engine.SphericalHarmonicLightComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SphericalHarmonicLightComponent : LightComponent
{
	public @property final bool bRenderBeforeModShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 576) & 0x1) != 0; }
	public @property final bool bRenderBeforeModShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 576) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 576) &= ~0x1; } return val; }
	public @property final auto ref UObject.SHVectorRGB WorldSpaceIncidentLighting() { return *cast(UObject.SHVectorRGB*)(cast(size_t)cast(void*)this + 432); }
}
