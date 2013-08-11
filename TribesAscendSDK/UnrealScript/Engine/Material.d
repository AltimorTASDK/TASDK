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
	struct MaterialInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
	}
	struct ColorMaterialInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
		public @property final auto ref UObject.Color Constant() { return *cast(UObject.Color*)(cast(size_t)&this + 32); }
		private ubyte __Constant[4];
		public @property final bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __UseConstant[4];
	}
	struct ScalarMaterialInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
		public @property final auto ref float Constant() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __Constant[4];
		public @property final bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __UseConstant[4];
	}
	struct VectorMaterialInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
		public @property final auto ref Vector Constant() { return *cast(Vector*)(cast(size_t)&this + 32); }
		private ubyte __Constant[12];
		public @property final bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __UseConstant[4];
	}
	struct Vector2MaterialInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
		public @property final auto ref float ConstantY() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __ConstantY[4];
		public @property final auto ref float ConstantX() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __ConstantX[4];
		public @property final bool UseConstant() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool UseConstant(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __UseConstant[4];
	}
	public @property final auto ref ScriptArray!(MaterialExpression) Expressions() { return *cast(ScriptArray!(MaterialExpression)*)(cast(size_t)cast(void*)this + 1172); }
	public @property final auto ref ScriptArray!(MaterialExpressionComment) EditorComments() { return *cast(ScriptArray!(MaterialExpressionComment)*)(cast(size_t)cast(void*)this + 1184); }
	public @property final auto ref ScriptArray!(MaterialExpressionCompound) EditorCompounds() { return *cast(ScriptArray!(MaterialExpressionCompound)*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref ScriptArray!(Texture) ReferencedTextures() { return *cast(ScriptArray!(Texture)*)(cast(size_t)cast(void*)this + 1268); }
	public @property final auto ref ScriptArray!(UObject.Guid) ReferencedTextureGuids() { return *cast(ScriptArray!(UObject.Guid)*)(cast(size_t)cast(void*)this + 1280); }
	public @property final auto ref int EditorYaw() { return *cast(int*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref int EditorPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1164); }
	public @property final auto ref int EditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 1160); }
	public @property final auto ref int EditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 1156); }
	public @property final auto ref UObject.Pointer DefaultMaterialInstances() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref UObject.Pointer MaterialResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1136); }
	public @property final bool bIsPreviewMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1000) != 0; }
	public @property final bool bIsPreviewMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1000; } return val; }
	public @property final bool bIsMasked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x800) != 0; }
	public @property final bool bIsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x800; } return val; }
	public @property final bool bUsesDistortion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x400) != 0; }
	public @property final bool bUsesDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x400; } return val; }
	public @property final bool bIsFallbackMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x200) != 0; }
	public @property final bool bIsFallbackMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x200; } return val; }
	public @property final bool bAllowLightmapSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x100) != 0; }
	public @property final bool bAllowLightmapSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x100; } return val; }
	public @property final bool bPerPixelCameraVector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x80) != 0; }
	public @property final bool bPerPixelCameraVector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x80; } return val; }
	public @property final bool Wireframe() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x40) != 0; }
	public @property final bool Wireframe(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x40; } return val; }
	public @property final bool bUseImageBasedReflections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x20) != 0; }
	public @property final bool bUseImageBasedReflections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x20; } return val; }
	public @property final bool bUsedWithScreenDoorFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x10) != 0; }
	public @property final bool bUsedWithScreenDoorFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x10; } return val; }
	public @property final bool bUsedWithAPEXMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x8) != 0; }
	public @property final bool bUsedWithAPEXMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x8; } return val; }
	public @property final bool bUsedWithSplineMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x4) != 0; }
	public @property final bool bUsedWithSplineMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x4; } return val; }
	public @property final bool bUsedWithInstancedMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x2) != 0; }
	public @property final bool bUsedWithInstancedMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x2; } return val; }
	public @property final bool bUsedWithRadialBlur() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1132) & 0x1) != 0; }
	public @property final bool bUsedWithRadialBlur(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1132) &= ~0x1; } return val; }
	public @property final bool bUsedWithMorphTargets() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80000000) != 0; }
	public @property final bool bUsedWithMorphTargets(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80000000; } return val; }
	public @property final bool bUsedWithMaterialEffect() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40000000) != 0; }
	public @property final bool bUsedWithMaterialEffect(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40000000; } return val; }
	public @property final bool bUsedWithDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20000000) != 0; }
	public @property final bool bUsedWithDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20000000; } return val; }
	public @property final bool bUsedWithFluidSurfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10000000) != 0; }
	public @property final bool bUsedWithFluidSurfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10000000; } return val; }
	public @property final bool bUsedWithInstancedMeshParticles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8000000) != 0; }
	public @property final bool bUsedWithInstancedMeshParticles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8000000; } return val; }
	public @property final bool bUsedWithGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4000000) != 0; }
	public @property final bool bUsedWithGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4000000; } return val; }
	public @property final bool bUsedWithLensFlare() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2000000) != 0; }
	public @property final bool bUsedWithLensFlare(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2000000; } return val; }
	public @property final bool bUsedWithStaticLighting() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1000000) != 0; }
	public @property final bool bUsedWithStaticLighting(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1000000; } return val; }
	public @property final bool bUsedWithSpeedTree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x800000) != 0; }
	public @property final bool bUsedWithSpeedTree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x800000; } return val; }
	public @property final bool bUsedWithParticleSubUV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x400000) != 0; }
	public @property final bool bUsedWithParticleSubUV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x400000; } return val; }
	public @property final bool bUsedWithBeamTrails() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x200000) != 0; }
	public @property final bool bUsedWithBeamTrails(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x200000; } return val; }
	public @property final bool bUsedWithParticleSprites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x100000) != 0; }
	public @property final bool bUsedWithParticleSprites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x100000; } return val; }
	public @property final bool bUsedWithParticleSystem() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80000) != 0; }
	public @property final bool bUsedWithParticleSystem(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80000; } return val; }
	public @property final bool bUsedWithFracturedMeshes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40000) != 0; }
	public @property final bool bUsedWithFracturedMeshes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40000; } return val; }
	public @property final bool bUsedWithLandscape() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20000) != 0; }
	public @property final bool bUsedWithLandscape(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20000; } return val; }
	public @property final bool bUsedWithTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10000) != 0; }
	public @property final bool bUsedWithTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10000; } return val; }
	public @property final bool bUsedWithSkeletalMesh() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8000) != 0; }
	public @property final bool bUsedWithSkeletalMesh(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8000; } return val; }
	public @property final bool bUsedAsSpecialEngineMaterial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4000) != 0; }
	public @property final bool bUsedAsSpecialEngineMaterial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4000; } return val; }
	public @property final bool bUsedWithFogVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2000) != 0; }
	public @property final bool bUsedWithFogVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2000; } return val; }
	public @property final bool bUsedAsLightFunction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1000) != 0; }
	public @property final bool bUsedAsLightFunction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1000; } return val; }
	public @property final bool bCastLitTranslucencyShadowAsMasked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x800) != 0; }
	public @property final bool bCastLitTranslucencyShadowAsMasked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x800; } return val; }
	public @property final bool bUseLitTranslucencyPostRenderDepthPass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x400) != 0; }
	public @property final bool bUseLitTranslucencyPostRenderDepthPass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x400; } return val; }
	public @property final bool bUseLitTranslucencyDepthPass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x200) != 0; }
	public @property final bool bUseLitTranslucencyDepthPass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x200; } return val; }
	public @property final bool bUseOneLayerDistortion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x100) != 0; }
	public @property final bool bUseOneLayerDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x100; } return val; }
	public @property final bool bAllowTranslucencyDoF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x80) != 0; }
	public @property final bool bAllowTranslucencyDoF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x80; } return val; }
	public @property final bool bTranslucencyInheritDominantShadowsFromOpaque() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x40) != 0; }
	public @property final bool bTranslucencyInheritDominantShadowsFromOpaque(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x40; } return val; }
	public @property final bool bTranslucencyReceiveDominantShadowsFromStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x20) != 0; }
	public @property final bool bTranslucencyReceiveDominantShadowsFromStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x20; } return val; }
	public @property final bool bAllowFog() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x10) != 0; }
	public @property final bool bAllowFog(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x10; } return val; }
	public @property final bool bDisableDepthTest() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x8) != 0; }
	public @property final bool bDisableDepthTest(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x8; } return val; }
	public @property final bool TwoSidedSeparatePass() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x4) != 0; }
	public @property final bool TwoSidedSeparatePass(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x4; } return val; }
	public @property final bool TwoSided() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x2) != 0; }
	public @property final bool TwoSided(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x2; } return val; }
	public @property final bool EnableSubsurfaceScattering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1128) & 0x1) != 0; }
	public @property final bool EnableSubsurfaceScattering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1128) &= ~0x1; } return val; }
	public @property final auto ref Material.ScalarMaterialInput SubsurfaceScatteringRadius() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 1092); }
	public @property final auto ref Material.ColorMaterialInput SubsurfaceAbsorptionColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref Material.ColorMaterialInput SubsurfaceInscatteringColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref Material.Vector2MaterialInput TessellationFactors() { return *cast(Material.Vector2MaterialInput*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref Material.VectorMaterialInput WorldDisplacement() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref Material.VectorMaterialInput WorldPositionOffset() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref Material.ColorMaterialInput TwoSidedLightingColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 856); }
	public @property final auto ref Material.ScalarMaterialInput TwoSidedLightingMask() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 820); }
	public @property final auto ref Material.VectorMaterialInput AnisotropicDirection() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 776); }
	public @property final auto ref Material.ColorMaterialInput CustomSkylightDiffuse() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref Material.ColorMaterialInput CustomLighting() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref EngineTypes.EMaterialTessellationMode D3D11TessellationMode() { return *cast(EngineTypes.EMaterialTessellationMode*)(cast(size_t)cast(void*)this + 702); }
	// WARNING: Property 'LightingModel' has the same name as a defined type!
	public @property final auto ref EngineTypes.EBlendMode BlendMode() { return *cast(EngineTypes.EBlendMode*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref Material.Vector2MaterialInput Distortion() { return *cast(Material.Vector2MaterialInput*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref float OpacityMaskClipValue() { return *cast(float*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref Material.ScalarMaterialInput OpacityMask() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref Material.ScalarMaterialInput Opacity() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref Material.ColorMaterialInput EmissiveColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref Material.VectorMaterialInput Normal() { return *cast(Material.VectorMaterialInput*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref Material.ScalarMaterialInput SpecularPower() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 468); }
	public @property final auto ref Material.ColorMaterialInput SpecularColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref Material.ScalarMaterialInput DiffusePower() { return *cast(Material.ScalarMaterialInput*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref Material.ColorMaterialInput DiffuseColor() { return *cast(Material.ColorMaterialInput*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref PhysicalMaterial WhitePhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref PhysicalMaterial BlackPhysicalMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref int PhysMaterialMaskUVChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Texture2D PhysMaterialMask() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 344); }
	// WARNING: Property 'PhysicalMaterial' has the same name as a defined type!
	public @property final auto ref PhysicalMaterial PhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 336); }
}
