module UnrealScript.Engine.SpeedTree;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface SpeedTree : UObject
{
	public @property final auto ref UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref Vector WindDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float WindStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref MaterialInterface BillboardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref MaterialInterface LeafMeshMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref MaterialInterface LeafCardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref MaterialInterface FrondMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref MaterialInterface Branch2Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref MaterialInterface Branch1Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float LeafStaticShadowOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref UObject.Pointer SRH() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bLegacySpeedTree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bLegacySpeedTree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}
