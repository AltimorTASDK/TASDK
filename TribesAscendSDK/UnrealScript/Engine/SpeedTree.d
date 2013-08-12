module UnrealScript.Engine.SpeedTree;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface SpeedTree : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeedTree")); }
	@property final
	{
		auto ref
		{
			UObject.Guid LightingGuid() { return *cast(UObject.Guid*)(cast(size_t)cast(void*)this + 112); }
			Vector WindDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
			float WindStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			MaterialInterface BillboardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 92); }
			MaterialInterface LeafMeshMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 88); }
			MaterialInterface LeafCardMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 84); }
			MaterialInterface FrondMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 80); }
			MaterialInterface Branch2Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 76); }
			MaterialInterface Branch1Material() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 72); }
			float LeafStaticShadowOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			UObject.Pointer SRH() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bLegacySpeedTree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bLegacySpeedTree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
