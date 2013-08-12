module UnrealScript.Engine.Material;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Material")); }
	struct MaterialInput
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Material.MaterialInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
	}
	struct ColorMaterialInput
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Material.ColorMaterialInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			@property final auto ref UObject.Color Constant() { return *cast(UObject.Color*)(cast(size_t)&this + 32); }
			bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	struct ScalarMaterialInput
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Material.ScalarMaterialInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			@property final auto ref float Constant() { return *cast(float*)(cast(size_t)&this + 32); }
			bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	struct VectorMaterialInput
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Material.VectorMaterialInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			@property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)&this + 32); }
			bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	struct Vector2MaterialInput
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Material.Vector2MaterialInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
		@property final
		{
			auto ref
			{
				float ConstantY() { return *cast(float*)(cast(size_t)&this + 36); }
				float ConstantX() { return *cast(float*)(cast(size_t)&this + 32); }
			}
			bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialExpression) Expressions() { return *cast(ScriptArray!(MaterialExpression)*)(cast(size_t)cast(void*)this + 1172); }
			ScriptArray!(MaterialExpressionComment) EditorComments() { return *cast(ScriptArray!(MaterialExpressionComment)*)(cast(size_t)cast(void*)this + 1184); }
			ScriptArray!(MaterialExpressionCompound) EditorCompounds() { return *cast(ScriptArray!(MaterialExpressionCompound)*)(cast(size_t)cast(void*)this + 1196); }
			ScriptArray!(Texture) ReferencedTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)cast(void*)this + 1268); }
			ScriptArray!(UObject.Guid) ReferencedTextureGuids() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 1280); }
			int EditorYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1168); }
			int EditorPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
			int EditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
			int EditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
			UObject.Pointer DefaultMaterialInstances() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1144); }
			UObject.Pointer MaterialResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1136); }
			Material.ScalarMaterialInput SubsurfaceScatteringRadius() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 1092); }
			Material.ColorMaterialInput SubsurfaceAbsorptionColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 1056); }
			Material.ColorMaterialInput SubsurfaceInscatteringColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 1020); }
			Material.Vector2MaterialInput TessellationFactors() { return *cast(Material.Vector2MaterialInput*)(cast(size_t)cast(void*)this + 980); }
			Material.VectorMaterialInput WorldDisplacement() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 936); }
			Material.VectorMaterialInput WorldPositionOffset() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 892); }
			Material.ColorMaterialInput TwoSidedLightingColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 856); }
			Material.ScalarMaterialInput TwoSidedLightingMask() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 820); }
			Material.VectorMaterialInput AnisotropicDirection() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 776); }
			Material.ColorMaterialInput CustomSkylightDiffuse() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 740); }
			Material.ColorMaterialInput CustomLighting() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 704); }
			EngineTypes.EMaterialTessellationMode D3D11TessellationMode() { return *cast(EngineTypes.EMaterialTessellationMode*)(cast(size_t)cast(void*)this + 702); }
			// WARNING: Property 'LightingModel' has the same name as a defined type!
			EngineTypes.EBlendMode BlendMode() { return *cast(EngineTypes.EBlendMode*)(cast(size_t)cast(void*)this + 700); }
			Material.Vector2MaterialInput Distortion() { return *cast(Material.Vector2MaterialInput*)(cast(size_t)cast(void*)this + 660); }
			float OpacityMaskClipValue() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
			Material.ScalarMaterialInput OpacityMask() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 620); }
			Material.ScalarMaterialInput Opacity() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 584); }
			Material.ColorMaterialInput EmissiveColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 548); }
			Material.VectorMaterialInput Normal() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 504); }
			Material.ScalarMaterialInput SpecularPower() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 468); }
			Material.ColorMaterialInput SpecularColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 432); }
			Material.ScalarMaterialInput DiffusePower() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 396); }
			Material.ColorMaterialInput DiffuseColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 360); }
			PhysicalMaterial WhitePhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 356); }
			PhysicalMaterial BlackPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 352); }
			int PhysMaterialMaskUVChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
			Texture2D PhysMaterialMask() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 344); }
			// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
			PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 336); }
		}
		bool bIsPreviewMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000) != 0; }
		bool bIsPreviewMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000; } return val; }
		bool bIsMasked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800) != 0; }
		bool bIsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800; } return val; }
		bool bUsesDistortion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400) != 0; }
		bool bUsesDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400; } return val; }
		bool bIsFallbackMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200) != 0; }
		bool bIsFallbackMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200; } return val; }
		bool bAllowLightmapSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100) != 0; }
		bool bAllowLightmapSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100; } return val; }
		bool bPerPixelCameraVector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80) != 0; }
		bool bPerPixelCameraVector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80; } return val; }
		bool Wireframe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40) != 0; }
		bool Wireframe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40; } return val; }
		bool bUseImageBasedReflections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20) != 0; }
		bool bUseImageBasedReflections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20; } return val; }
		bool bUsedWithScreenDoorFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10) != 0; }
		bool bUsedWithScreenDoorFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10; } return val; }
		bool bUsedWithAPEXMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8) != 0; }
		bool bUsedWithAPEXMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8; } return val; }
		bool bUsedWithSplineMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4) != 0; }
		bool bUsedWithSplineMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4; } return val; }
		bool bUsedWithInstancedMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2) != 0; }
		bool bUsedWithInstancedMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2; } return val; }
		bool bUsedWithRadialBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1) != 0; }
		bool bUsedWithRadialBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1; } return val; }
		bool bUsedWithMorphTargets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80000000) != 0; }
		bool bUsedWithMorphTargets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80000000; } return val; }
		bool bUsedWithMaterialEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40000000) != 0; }
		bool bUsedWithMaterialEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40000000; } return val; }
		bool bUsedWithDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20000000) != 0; }
		bool bUsedWithDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20000000; } return val; }
		bool bUsedWithFluidSurfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10000000) != 0; }
		bool bUsedWithFluidSurfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10000000; } return val; }
		bool bUsedWithInstancedMeshParticles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8000000) != 0; }
		bool bUsedWithInstancedMeshParticles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8000000; } return val; }
		bool bUsedWithGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4000000) != 0; }
		bool bUsedWithGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4000000; } return val; }
		bool bUsedWithLensFlare() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2000000) != 0; }
		bool bUsedWithLensFlare(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2000000; } return val; }
		bool bUsedWithStaticLighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1000000) != 0; }
		bool bUsedWithStaticLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1000000; } return val; }
		bool bUsedWithSpeedTree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x800000) != 0; }
		bool bUsedWithSpeedTree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x800000; } return val; }
		bool bUsedWithParticleSubUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x400000) != 0; }
		bool bUsedWithParticleSubUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x400000; } return val; }
		bool bUsedWithBeamTrails() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x200000) != 0; }
		bool bUsedWithBeamTrails(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x200000; } return val; }
		bool bUsedWithParticleSprites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x100000) != 0; }
		bool bUsedWithParticleSprites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x100000; } return val; }
		bool bUsedWithParticleSystem() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80000) != 0; }
		bool bUsedWithParticleSystem(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80000; } return val; }
		bool bUsedWithFracturedMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40000) != 0; }
		bool bUsedWithFracturedMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40000; } return val; }
		bool bUsedWithLandscape() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20000) != 0; }
		bool bUsedWithLandscape(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20000; } return val; }
		bool bUsedWithTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10000) != 0; }
		bool bUsedWithTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10000; } return val; }
		bool bUsedWithSkeletalMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8000) != 0; }
		bool bUsedWithSkeletalMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8000; } return val; }
		bool bUsedAsSpecialEngineMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4000) != 0; }
		bool bUsedAsSpecialEngineMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4000; } return val; }
		bool bUsedWithFogVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2000) != 0; }
		bool bUsedWithFogVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2000; } return val; }
		bool bUsedAsLightFunction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1000) != 0; }
		bool bUsedAsLightFunction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1000; } return val; }
		bool bCastLitTranslucencyShadowAsMasked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x800) != 0; }
		bool bCastLitTranslucencyShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x800; } return val; }
		bool bUseLitTranslucencyPostRenderDepthPass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x400) != 0; }
		bool bUseLitTranslucencyPostRenderDepthPass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x400; } return val; }
		bool bUseLitTranslucencyDepthPass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x200) != 0; }
		bool bUseLitTranslucencyDepthPass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x200; } return val; }
		bool bUseOneLayerDistortion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x100) != 0; }
		bool bUseOneLayerDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x100; } return val; }
		bool bAllowTranslucencyDoF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80) != 0; }
		bool bAllowTranslucencyDoF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80; } return val; }
		bool bTranslucencyInheritDominantShadowsFromOpaque() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40) != 0; }
		bool bTranslucencyInheritDominantShadowsFromOpaque(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40; } return val; }
		bool bTranslucencyReceiveDominantShadowsFromStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20) != 0; }
		bool bTranslucencyReceiveDominantShadowsFromStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20; } return val; }
		bool bAllowFog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10) != 0; }
		bool bAllowFog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10; } return val; }
		bool bDisableDepthTest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8) != 0; }
		bool bDisableDepthTest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8; } return val; }
		bool TwoSidedSeparatePass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4) != 0; }
		bool TwoSidedSeparatePass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4; } return val; }
		bool TwoSided() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2) != 0; }
		bool TwoSided(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2; } return val; }
		bool EnableSubsurfaceScattering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1) != 0; }
		bool EnableSubsurfaceScattering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1; } return val; }
	}
}
