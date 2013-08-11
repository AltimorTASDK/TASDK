module UnrealScript.Engine.TerrainComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface TerrainComponent : PrimitiveComponent
{
	struct TerrainPatchBounds
	{
		public @property final auto ref float MaxDisplacement() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MaxDisplacement[4];
		public @property final auto ref float MaxHeight() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MaxHeight[4];
		public @property final auto ref float MinHeight() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __MinHeight[4];
	}
	struct TerrainMaterialMask
	{
		public @property final auto ref int NumBits() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __NumBits[4];
		public @property final auto ref QWord BitMask() { return *cast(QWord*)(cast(size_t)&this + 0); }
		private ubyte __BitMask[8];
	}
	struct TerrainBVTree
	{
		public @property final auto ref ScriptArray!(int) Nodes() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
		private ubyte __Nodes[12];
	}
	public @property final auto ref ScriptArray!(ShadowMap2D) ShadowMaps() { return *cast(ScriptArray!(ShadowMap2D)*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptArray!(UObject.Guid) IrrelevantLights() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref ScriptArray!(TerrainComponent.TerrainPatchBounds) PatchBounds() { return *cast(ScriptArray!(TerrainComponent.TerrainPatchBounds)*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref ScriptArray!(TerrainComponent.TerrainMaterialMask) BatchMaterials() { return *cast(ScriptArray!(TerrainComponent.TerrainMaterialMask)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(Vector) CollisionVertices() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 584); }
	public @property final bool bDisplayCollisionLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 600) & 0x1) != 0; }
	public @property final bool bDisplayCollisionLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 600) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 600) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer RBHeightfield() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref TerrainComponent.TerrainBVTree BVTree() { return *cast(TerrainComponent.TerrainBVTree*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref int FullBatch() { return *cast(int*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref EngineTypes.LightMapRef LightMap() { return *cast(EngineTypes.LightMapRef*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref int TrueSectionSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int TrueSectionSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref int SectionSizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref int SectionSizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref UObject.Pointer TerrainObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 512); }
}
