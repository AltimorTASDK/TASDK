module UnrealScript.Engine.TerrainComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ShadowMap2D;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface TerrainComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TerrainComponent")()); }
	private static __gshared TerrainComponent mDefaultProperties;
	@property final static TerrainComponent DefaultProperties() { mixin(MGDPC!(TerrainComponent, "TerrainComponent Engine.Default__TerrainComponent")()); }
	struct TerrainPatchBounds
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TerrainComponent.TerrainPatchBounds")()); }
		@property final auto ref
		{
			float MaxDisplacement() { mixin(MGPS!(float, 8)()); }
			float MaxHeight() { mixin(MGPS!(float, 4)()); }
			float MinHeight() { mixin(MGPS!(float, 0)()); }
		}
	}
	struct TerrainMaterialMask
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TerrainComponent.TerrainMaterialMask")()); }
		@property final auto ref
		{
			int NumBits() { mixin(MGPS!(int, 8)()); }
			QWord BitMask() { mixin(MGPS!(QWord, 0)()); }
		}
	}
	struct TerrainBVTree
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TerrainComponent.TerrainBVTree")()); }
		@property final auto ref ScriptArray!(int) Nodes() { mixin(MGPS!(ScriptArray!(int), 0)()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ShadowMap2D) ShadowMaps() { mixin(MGPC!(ScriptArray!(ShadowMap2D), 488)()); }
			ScriptArray!(UObject.Guid) IrrelevantLights() { mixin(MGPC!(ScriptArray!(UObject.Guid), 500)()); }
			ScriptArray!(TerrainComponent.TerrainPatchBounds) PatchBounds() { mixin(MGPC!(ScriptArray!(TerrainComponent.TerrainPatchBounds), 544)()); }
			ScriptArray!(TerrainComponent.TerrainMaterialMask) BatchMaterials() { mixin(MGPC!(ScriptArray!(TerrainComponent.TerrainMaterialMask), 556)()); }
			ScriptArray!(Vector) CollisionVertices() { mixin(MGPC!(ScriptArray!(Vector), 584)()); }
			UObject.Pointer RBHeightfield() { mixin(MGPC!(UObject.Pointer, 596)()); }
			TerrainComponent.TerrainBVTree BVTree() { mixin(MGPC!(TerrainComponent.TerrainBVTree, 572)()); }
			int FullBatch() { mixin(MGPC!(int, 568)()); }
			EngineTypes.LightMapRef LightMap() { mixin(MGPC!(EngineTypes.LightMapRef, 540)()); }
			int TrueSectionSizeY() { mixin(MGPC!(int, 536)()); }
			int TrueSectionSizeX() { mixin(MGPC!(int, 532)()); }
			int SectionSizeY() { mixin(MGPC!(int, 528)()); }
			int SectionSizeX() { mixin(MGPC!(int, 524)()); }
			int SectionBaseY() { mixin(MGPC!(int, 520)()); }
			int SectionBaseX() { mixin(MGPC!(int, 516)()); }
			UObject.Pointer TerrainObject() { mixin(MGPC!(UObject.Pointer, 512)()); }
		}
		bool bDisplayCollisionLevel() { mixin(MGBPC!(600, 0x1)()); }
		bool bDisplayCollisionLevel(bool val) { mixin(MSBPC!(600, 0x1)()); }
	}
}
