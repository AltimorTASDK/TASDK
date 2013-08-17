module UnrealScript.Engine.Material;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialExpressionComment;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.MaterialExpressionCompound;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.MaterialExpression;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface Material : MaterialInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Material")()); }
	private static __gshared Material mDefaultProperties;
	@property final static Material DefaultProperties() { mixin(MGDPC!(Material, "Material Engine.Default__Material")()); }
	struct MaterialInput
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Material.MaterialInput")()); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS!("int", 24)()); }
			int MaskA() { mixin(MGPS!("int", 20)()); }
			int MaskB() { mixin(MGPS!("int", 16)()); }
			int MaskG() { mixin(MGPS!("int", 12)()); }
			int MaskR() { mixin(MGPS!("int", 8)()); }
			int Mask() { mixin(MGPS!("int", 4)()); }
			MaterialExpression Expression() { mixin(MGPS!("MaterialExpression", 0)()); }
		}
	}
	struct ColorMaterialInput
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Material.ColorMaterialInput")()); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS!("int", 24)()); }
			int MaskA() { mixin(MGPS!("int", 20)()); }
			int MaskB() { mixin(MGPS!("int", 16)()); }
			int MaskG() { mixin(MGPS!("int", 12)()); }
			int MaskR() { mixin(MGPS!("int", 8)()); }
			int Mask() { mixin(MGPS!("int", 4)()); }
			MaterialExpression Expression() { mixin(MGPS!("MaterialExpression", 0)()); }
		}
		@property final
		{
			@property final auto ref UObject.Color Constant() { mixin(MGPS!("UObject.Color", 32)()); }
			bool UseConstant() { mixin(MGBPS!(28, 0x1)()); }
			bool UseConstant(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	struct ScalarMaterialInput
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Material.ScalarMaterialInput")()); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS!("int", 24)()); }
			int MaskA() { mixin(MGPS!("int", 20)()); }
			int MaskB() { mixin(MGPS!("int", 16)()); }
			int MaskG() { mixin(MGPS!("int", 12)()); }
			int MaskR() { mixin(MGPS!("int", 8)()); }
			int Mask() { mixin(MGPS!("int", 4)()); }
			MaterialExpression Expression() { mixin(MGPS!("MaterialExpression", 0)()); }
		}
		@property final
		{
			@property final auto ref float Constant() { mixin(MGPS!("float", 32)()); }
			bool UseConstant() { mixin(MGBPS!(28, 0x1)()); }
			bool UseConstant(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	struct VectorMaterialInput
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Material.VectorMaterialInput")()); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS!("int", 24)()); }
			int MaskA() { mixin(MGPS!("int", 20)()); }
			int MaskB() { mixin(MGPS!("int", 16)()); }
			int MaskG() { mixin(MGPS!("int", 12)()); }
			int MaskR() { mixin(MGPS!("int", 8)()); }
			int Mask() { mixin(MGPS!("int", 4)()); }
			MaterialExpression Expression() { mixin(MGPS!("MaterialExpression", 0)()); }
		}
		@property final
		{
			@property final auto ref Vector Constant() { mixin(MGPS!("Vector", 32)()); }
			bool UseConstant() { mixin(MGBPS!(28, 0x1)()); }
			bool UseConstant(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	struct Vector2MaterialInput
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Material.Vector2MaterialInput")()); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS!("int", 24)()); }
			int MaskA() { mixin(MGPS!("int", 20)()); }
			int MaskB() { mixin(MGPS!("int", 16)()); }
			int MaskG() { mixin(MGPS!("int", 12)()); }
			int MaskR() { mixin(MGPS!("int", 8)()); }
			int Mask() { mixin(MGPS!("int", 4)()); }
			MaterialExpression Expression() { mixin(MGPS!("MaterialExpression", 0)()); }
		}
		@property final
		{
			auto ref
			{
				float ConstantY() { mixin(MGPS!("float", 36)()); }
				float ConstantX() { mixin(MGPS!("float", 32)()); }
			}
			bool UseConstant() { mixin(MGBPS!(28, 0x1)()); }
			bool UseConstant(bool val) { mixin(MSBPS!(28, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialExpression) Expressions() { mixin(MGPC!("ScriptArray!(MaterialExpression)", 1172)()); }
			ScriptArray!(MaterialExpressionComment) EditorComments() { mixin(MGPC!("ScriptArray!(MaterialExpressionComment)", 1184)()); }
			ScriptArray!(MaterialExpressionCompound) EditorCompounds() { mixin(MGPC!("ScriptArray!(MaterialExpressionCompound)", 1196)()); }
			ScriptArray!(Texture) ReferencedTextures() { mixin(MGPC!("ScriptArray!(Texture)", 1268)()); }
			ScriptArray!(UObject.Guid) ReferencedTextureGuids() { mixin(MGPC!("ScriptArray!(UObject.Guid)", 1280)()); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'EditorParameters'!
			int EditorYaw() { mixin(MGPC!("int", 1168)()); }
			int EditorPitch() { mixin(MGPC!("int", 1164)()); }
			int EditorY() { mixin(MGPC!("int", 1160)()); }
			int EditorX() { mixin(MGPC!("int", 1156)()); }
			UObject.Pointer DefaultMaterialInstances() { mixin(MGPC!("UObject.Pointer", 1144)()); }
			UObject.Pointer MaterialResources() { mixin(MGPC!("UObject.Pointer", 1136)()); }
			Material.ScalarMaterialInput SubsurfaceScatteringRadius() { mixin(MGPC!("Material.ScalarMaterialInput", 1092)()); }
			Material.ColorMaterialInput SubsurfaceAbsorptionColor() { mixin(MGPC!("Material.ColorMaterialInput", 1056)()); }
			Material.ColorMaterialInput SubsurfaceInscatteringColor() { mixin(MGPC!("Material.ColorMaterialInput", 1020)()); }
			Material.Vector2MaterialInput TessellationFactors() { mixin(MGPC!("Material.Vector2MaterialInput", 980)()); }
			Material.VectorMaterialInput WorldDisplacement() { mixin(MGPC!("Material.VectorMaterialInput", 936)()); }
			Material.VectorMaterialInput WorldPositionOffset() { mixin(MGPC!("Material.VectorMaterialInput", 892)()); }
			Material.ColorMaterialInput TwoSidedLightingColor() { mixin(MGPC!("Material.ColorMaterialInput", 856)()); }
			Material.ScalarMaterialInput TwoSidedLightingMask() { mixin(MGPC!("Material.ScalarMaterialInput", 820)()); }
			Material.VectorMaterialInput AnisotropicDirection() { mixin(MGPC!("Material.VectorMaterialInput", 776)()); }
			Material.ColorMaterialInput CustomSkylightDiffuse() { mixin(MGPC!("Material.ColorMaterialInput", 740)()); }
			Material.ColorMaterialInput CustomLighting() { mixin(MGPC!("Material.ColorMaterialInput", 704)()); }
			EngineTypes.EMaterialTessellationMode D3D11TessellationMode() { mixin(MGPC!("EngineTypes.EMaterialTessellationMode", 702)()); }
			// WARNING: Property 'LightingModel' has the same name as a defined type!
			EngineTypes.EBlendMode BlendMode() { mixin(MGPC!("EngineTypes.EBlendMode", 700)()); }
			Material.Vector2MaterialInput Distortion() { mixin(MGPC!("Material.Vector2MaterialInput", 660)()); }
			float OpacityMaskClipValue() { mixin(MGPC!("float", 656)()); }
			Material.ScalarMaterialInput OpacityMask() { mixin(MGPC!("Material.ScalarMaterialInput", 620)()); }
			Material.ScalarMaterialInput Opacity() { mixin(MGPC!("Material.ScalarMaterialInput", 584)()); }
			Material.ColorMaterialInput EmissiveColor() { mixin(MGPC!("Material.ColorMaterialInput", 548)()); }
			Material.VectorMaterialInput Normal() { mixin(MGPC!("Material.VectorMaterialInput", 504)()); }
			Material.ScalarMaterialInput SpecularPower() { mixin(MGPC!("Material.ScalarMaterialInput", 468)()); }
			Material.ColorMaterialInput SpecularColor() { mixin(MGPC!("Material.ColorMaterialInput", 432)()); }
			Material.ScalarMaterialInput DiffusePower() { mixin(MGPC!("Material.ScalarMaterialInput", 396)()); }
			Material.ColorMaterialInput DiffuseColor() { mixin(MGPC!("Material.ColorMaterialInput", 360)()); }
			PhysicalMaterial WhitePhysicalMaterial() { mixin(MGPC!("PhysicalMaterial", 356)()); }
			PhysicalMaterial BlackPhysicalMaterial() { mixin(MGPC!("PhysicalMaterial", 352)()); }
			int PhysMaterialMaskUVChannel() { mixin(MGPC!("int", 348)()); }
			Texture2D PhysMaterialMask() { mixin(MGPC!("Texture2D", 344)()); }
			// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
			PhysicalMaterial PhysMaterial() { mixin(MGPC!("PhysicalMaterial", 336)()); }
		}
		bool bIsPreviewMaterial() { mixin(MGBPC!(1132, 0x1000)()); }
		bool bIsPreviewMaterial(bool val) { mixin(MSBPC!(1132, 0x1000)()); }
		bool bIsMasked() { mixin(MGBPC!(1132, 0x800)()); }
		bool bIsMasked(bool val) { mixin(MSBPC!(1132, 0x800)()); }
		bool bUsesDistortion() { mixin(MGBPC!(1132, 0x400)()); }
		bool bUsesDistortion(bool val) { mixin(MSBPC!(1132, 0x400)()); }
		bool bIsFallbackMaterial() { mixin(MGBPC!(1132, 0x200)()); }
		bool bIsFallbackMaterial(bool val) { mixin(MSBPC!(1132, 0x200)()); }
		bool bAllowLightmapSpecular() { mixin(MGBPC!(1132, 0x100)()); }
		bool bAllowLightmapSpecular(bool val) { mixin(MSBPC!(1132, 0x100)()); }
		bool bPerPixelCameraVector() { mixin(MGBPC!(1132, 0x80)()); }
		bool bPerPixelCameraVector(bool val) { mixin(MSBPC!(1132, 0x80)()); }
		bool Wireframe() { mixin(MGBPC!(1132, 0x40)()); }
		bool Wireframe(bool val) { mixin(MSBPC!(1132, 0x40)()); }
		bool bUseImageBasedReflections() { mixin(MGBPC!(1132, 0x20)()); }
		bool bUseImageBasedReflections(bool val) { mixin(MSBPC!(1132, 0x20)()); }
		bool bUsedWithScreenDoorFade() { mixin(MGBPC!(1132, 0x10)()); }
		bool bUsedWithScreenDoorFade(bool val) { mixin(MSBPC!(1132, 0x10)()); }
		bool bUsedWithAPEXMeshes() { mixin(MGBPC!(1132, 0x8)()); }
		bool bUsedWithAPEXMeshes(bool val) { mixin(MSBPC!(1132, 0x8)()); }
		bool bUsedWithSplineMeshes() { mixin(MGBPC!(1132, 0x4)()); }
		bool bUsedWithSplineMeshes(bool val) { mixin(MSBPC!(1132, 0x4)()); }
		bool bUsedWithInstancedMeshes() { mixin(MGBPC!(1132, 0x2)()); }
		bool bUsedWithInstancedMeshes(bool val) { mixin(MSBPC!(1132, 0x2)()); }
		bool bUsedWithRadialBlur() { mixin(MGBPC!(1132, 0x1)()); }
		bool bUsedWithRadialBlur(bool val) { mixin(MSBPC!(1132, 0x1)()); }
		bool bUsedWithMorphTargets() { mixin(MGBPC!(1128, 0x80000000)()); }
		bool bUsedWithMorphTargets(bool val) { mixin(MSBPC!(1128, 0x80000000)()); }
		bool bUsedWithMaterialEffect() { mixin(MGBPC!(1128, 0x40000000)()); }
		bool bUsedWithMaterialEffect(bool val) { mixin(MSBPC!(1128, 0x40000000)()); }
		bool bUsedWithDecals() { mixin(MGBPC!(1128, 0x20000000)()); }
		bool bUsedWithDecals(bool val) { mixin(MSBPC!(1128, 0x20000000)()); }
		bool bUsedWithFluidSurfaces() { mixin(MGBPC!(1128, 0x10000000)()); }
		bool bUsedWithFluidSurfaces(bool val) { mixin(MSBPC!(1128, 0x10000000)()); }
		bool bUsedWithInstancedMeshParticles() { mixin(MGBPC!(1128, 0x8000000)()); }
		bool bUsedWithInstancedMeshParticles(bool val) { mixin(MSBPC!(1128, 0x8000000)()); }
		bool bUsedWithGammaCorrection() { mixin(MGBPC!(1128, 0x4000000)()); }
		bool bUsedWithGammaCorrection(bool val) { mixin(MSBPC!(1128, 0x4000000)()); }
		bool bUsedWithLensFlare() { mixin(MGBPC!(1128, 0x2000000)()); }
		bool bUsedWithLensFlare(bool val) { mixin(MSBPC!(1128, 0x2000000)()); }
		bool bUsedWithStaticLighting() { mixin(MGBPC!(1128, 0x1000000)()); }
		bool bUsedWithStaticLighting(bool val) { mixin(MSBPC!(1128, 0x1000000)()); }
		bool bUsedWithSpeedTree() { mixin(MGBPC!(1128, 0x800000)()); }
		bool bUsedWithSpeedTree(bool val) { mixin(MSBPC!(1128, 0x800000)()); }
		bool bUsedWithParticleSubUV() { mixin(MGBPC!(1128, 0x400000)()); }
		bool bUsedWithParticleSubUV(bool val) { mixin(MSBPC!(1128, 0x400000)()); }
		bool bUsedWithBeamTrails() { mixin(MGBPC!(1128, 0x200000)()); }
		bool bUsedWithBeamTrails(bool val) { mixin(MSBPC!(1128, 0x200000)()); }
		bool bUsedWithParticleSprites() { mixin(MGBPC!(1128, 0x100000)()); }
		bool bUsedWithParticleSprites(bool val) { mixin(MSBPC!(1128, 0x100000)()); }
		bool bUsedWithParticleSystem() { mixin(MGBPC!(1128, 0x80000)()); }
		bool bUsedWithParticleSystem(bool val) { mixin(MSBPC!(1128, 0x80000)()); }
		bool bUsedWithFracturedMeshes() { mixin(MGBPC!(1128, 0x40000)()); }
		bool bUsedWithFracturedMeshes(bool val) { mixin(MSBPC!(1128, 0x40000)()); }
		bool bUsedWithLandscape() { mixin(MGBPC!(1128, 0x20000)()); }
		bool bUsedWithLandscape(bool val) { mixin(MSBPC!(1128, 0x20000)()); }
		bool bUsedWithTerrain() { mixin(MGBPC!(1128, 0x10000)()); }
		bool bUsedWithTerrain(bool val) { mixin(MSBPC!(1128, 0x10000)()); }
		bool bUsedWithSkeletalMesh() { mixin(MGBPC!(1128, 0x8000)()); }
		bool bUsedWithSkeletalMesh(bool val) { mixin(MSBPC!(1128, 0x8000)()); }
		bool bUsedAsSpecialEngineMaterial() { mixin(MGBPC!(1128, 0x4000)()); }
		bool bUsedAsSpecialEngineMaterial(bool val) { mixin(MSBPC!(1128, 0x4000)()); }
		bool bUsedWithFogVolumes() { mixin(MGBPC!(1128, 0x2000)()); }
		bool bUsedWithFogVolumes(bool val) { mixin(MSBPC!(1128, 0x2000)()); }
		bool bUsedAsLightFunction() { mixin(MGBPC!(1128, 0x1000)()); }
		bool bUsedAsLightFunction(bool val) { mixin(MSBPC!(1128, 0x1000)()); }
		bool bCastLitTranslucencyShadowAsMasked() { mixin(MGBPC!(1128, 0x800)()); }
		bool bCastLitTranslucencyShadowAsMasked(bool val) { mixin(MSBPC!(1128, 0x800)()); }
		bool bUseLitTranslucencyPostRenderDepthPass() { mixin(MGBPC!(1128, 0x400)()); }
		bool bUseLitTranslucencyPostRenderDepthPass(bool val) { mixin(MSBPC!(1128, 0x400)()); }
		bool bUseLitTranslucencyDepthPass() { mixin(MGBPC!(1128, 0x200)()); }
		bool bUseLitTranslucencyDepthPass(bool val) { mixin(MSBPC!(1128, 0x200)()); }
		bool bUseOneLayerDistortion() { mixin(MGBPC!(1128, 0x100)()); }
		bool bUseOneLayerDistortion(bool val) { mixin(MSBPC!(1128, 0x100)()); }
		bool bAllowTranslucencyDoF() { mixin(MGBPC!(1128, 0x80)()); }
		bool bAllowTranslucencyDoF(bool val) { mixin(MSBPC!(1128, 0x80)()); }
		bool bTranslucencyInheritDominantShadowsFromOpaque() { mixin(MGBPC!(1128, 0x40)()); }
		bool bTranslucencyInheritDominantShadowsFromOpaque(bool val) { mixin(MSBPC!(1128, 0x40)()); }
		bool bTranslucencyReceiveDominantShadowsFromStatic() { mixin(MGBPC!(1128, 0x20)()); }
		bool bTranslucencyReceiveDominantShadowsFromStatic(bool val) { mixin(MSBPC!(1128, 0x20)()); }
		bool bAllowFog() { mixin(MGBPC!(1128, 0x10)()); }
		bool bAllowFog(bool val) { mixin(MSBPC!(1128, 0x10)()); }
		bool bDisableDepthTest() { mixin(MGBPC!(1128, 0x8)()); }
		bool bDisableDepthTest(bool val) { mixin(MSBPC!(1128, 0x8)()); }
		bool TwoSidedSeparatePass() { mixin(MGBPC!(1128, 0x4)()); }
		bool TwoSidedSeparatePass(bool val) { mixin(MSBPC!(1128, 0x4)()); }
		bool TwoSided() { mixin(MGBPC!(1128, 0x2)()); }
		bool TwoSided(bool val) { mixin(MSBPC!(1128, 0x2)()); }
		bool EnableSubsurfaceScattering() { mixin(MGBPC!(1128, 0x1)()); }
		bool EnableSubsurfaceScattering(bool val) { mixin(MSBPC!(1128, 0x1)()); }
	}
}
