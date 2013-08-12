module UnrealScript.Engine.RB_BodySetup;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface RB_BodySetup : KMeshProps
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_BodySetup")); }
	enum ESleepFamily : ubyte
	{
		SF_Normal = 0,
		SF_Sensitive = 1,
		SF_MAX = 2,
	}
	struct KCachedConvexData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.RB_BodySetup.KCachedConvexData")); }
		@property final auto ref ScriptArray!(RB_BodySetup.KCachedConvexDataElement) CachedConvexElements() { return *cast(ScriptArray!(RB_BodySetup.KCachedConvexDataElement)*)(cast(size_t)&this + 0); }
	}
	struct KCachedConvexDataElement
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.RB_BodySetup.KCachedConvexDataElement")); }
		@property final auto ref ScriptArray!(ubyte) ConvexElementData() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject.Pointer) CollisionGeom() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 152); }
			ScriptArray!(Vector) CollisionGeomScale3D() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 164); }
			ScriptArray!(Vector) PreCachedPhysScale() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 176); }
			ScriptArray!(RB_BodySetup.KCachedConvexData) PreCachedPhysData() { return *cast(ScriptArray!(RB_BodySetup.KCachedConvexData)*)(cast(size_t)cast(void*)this + 188); }
			int PreCachedPhysDataVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
			float MassScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 144); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
			RB_BodySetup.ESleepFamily SleepFamily() { return *cast(RB_BodySetup.ESleepFamily*)(cast(size_t)cast(void*)this + 128); }
		}
		bool bConsiderForBounds() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x40) != 0; }
		bool bConsiderForBounds(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x40; } return val; }
		bool bAlwaysFullAnimWeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x20) != 0; }
		bool bAlwaysFullAnimWeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x20; } return val; }
		bool bEnableContinuousCollisionDetection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
		bool bEnableContinuousCollisionDetection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
		bool bBlockNonZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
		bool bBlockNonZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
		bool bBlockZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
		bool bBlockZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
		bool bNoCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bNoCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bFixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bFixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
