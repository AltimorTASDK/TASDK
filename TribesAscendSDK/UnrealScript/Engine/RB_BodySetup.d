module UnrealScript.Engine.RB_BodySetup;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface RB_BodySetup : KMeshProps
{
	enum ESleepFamily : ubyte
	{
		SF_Normal = 0,
		SF_Sensitive = 1,
		SF_MAX = 2,
	}
	struct KCachedConvexData
	{
		public @property final auto ref ScriptArray!(RB_BodySetup.KCachedConvexDataElement) CachedConvexElements() { return *cast(ScriptArray!(RB_BodySetup.KCachedConvexDataElement)*)(cast(size_t)&this + 0); }
		private ubyte __CachedConvexElements[12];
	}
	struct KCachedConvexDataElement
	{
		public @property final auto ref ScriptArray!(ubyte) ConvexElementData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
		private ubyte __ConvexElementData[12];
	}
	public @property final auto ref ScriptArray!(UObject.Pointer) CollisionGeom() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptArray!(Vector) CollisionGeomScale3D() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptArray!(Vector) PreCachedPhysScale() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptArray!(RB_BodySetup.KCachedConvexData) PreCachedPhysData() { return *cast(ScriptArray!(RB_BodySetup.KCachedConvexData)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref int PreCachedPhysDataVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float MassScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 144); }
	public @property final bool bConsiderForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x40) != 0; }
	public @property final bool bConsiderForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x40; } return val; }
	public @property final bool bAlwaysFullAnimWeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x20) != 0; }
	public @property final bool bAlwaysFullAnimWeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x20; } return val; }
	public @property final bool bEnableContinuousCollisionDetection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
	public @property final bool bEnableContinuousCollisionDetection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
	public @property final bool bBlockNonZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
	public @property final bool bBlockNonZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
	public @property final bool bBlockZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
	public @property final bool bBlockZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
	public @property final bool bNoCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
	public @property final bool bNoCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
	public @property final bool bFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref RB_BodySetup.ESleepFamily SleepFamily() { return *cast(RB_BodySetup.ESleepFamily*)(cast(size_t)cast(void*)this + 128); }
}
