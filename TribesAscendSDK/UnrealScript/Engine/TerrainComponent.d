module UnrealScript.Engine.TerrainComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface TerrainComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TerrainComponent")); }
	private static __gshared TerrainComponent mDefaultProperties;
	@property final static TerrainComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainComponent)("TerrainComponent Engine.Default__TerrainComponent")); }
	struct TerrainPatchBounds
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainComponent.TerrainPatchBounds")); }
		@property final auto ref
		{
			float MaxDisplacement() { return *cast(float*)(cast(size_t)&this + 8); }
			float MaxHeight() { return *cast(float*)(cast(size_t)&this + 4); }
			float MinHeight() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct TerrainMaterialMask
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainComponent.TerrainMaterialMask")); }
		@property final auto ref
		{
			int NumBits() { return *cast(int*)(cast(size_t)&this + 8); }
			QWord BitMask() { return *cast(QWord*)(cast(size_t)&this + 0); }
		}
	}
	struct TerrainBVTree
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainComponent.TerrainBVTree")); }
		@property final auto ref ScriptArray!(int) Nodes() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 488); }
			ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 500); }
			ScriptArray!(TerrainComponent.TerrainPatchBounds) PatchBounds() { return *cast(ScriptArray!(TerrainComponent.TerrainPatchBounds)*)(cast(size_t)cast(void*)this + 544); }
			ScriptArray!(TerrainComponent.TerrainMaterialMask) BatchMaterials() { return *cast(ScriptArray!(TerrainComponent.TerrainMaterialMask)*)(cast(size_t)cast(void*)this + 556); }
			ScriptArray!(Vector) CollisionVertices() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 584); }
			UObject.Pointer RBHeightfield() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 596); }
			TerrainComponent.TerrainBVTree BVTree() { return *cast(TerrainComponent.TerrainBVTree*)(cast(size_t)cast(void*)this + 572); }
			int FullBatch() { return *cast(int*)(cast(size_t)cast(void*)this + 568); }
			EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 540); }
			int TrueSectionSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
			int TrueSectionSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			int SectionSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
			int SectionSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 524); }
			int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
			int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
			UObject.Pointer TerrainObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 512); }
		}
		bool bDisplayCollisionLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x1) != 0; }
		bool bDisplayCollisionLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x1; } return val; }
	}
}
