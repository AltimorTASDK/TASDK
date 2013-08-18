module UnrealScript.Engine.Texture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Surface;
import UnrealScript.Core.UObject;

extern(C++) interface Texture : Surface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Texture")); }
	private static __gshared Texture mDefaultProperties;
	@property final static Texture DefaultProperties() { mixin(MGDPC("Texture", "Texture Engine.Default__Texture")); }
	enum TextureCompressionSettings : ubyte
	{
		TC_Default = 0,
		TC_Normalmap = 1,
		TC_Displacementmap = 2,
		TC_NormalmapAlpha = 3,
		TC_Grayscale = 4,
		TC_HighDynamicRange = 5,
		TC_OneBitAlpha = 6,
		TC_NormalmapUncompressed = 7,
		TC_NormalmapBC5 = 8,
		TC_OneBitMonochrome = 9,
		TC_SimpleLightmapModification = 10,
		TC_VectorDisplacementmap = 11,
		TC_MAX = 12,
	}
	enum EPixelFormat : ubyte
	{
		PF_Unknown = 0,
		PF_A32B32G32R32F = 1,
		PF_A8R8G8B8 = 2,
		PF_G8 = 3,
		PF_G16 = 4,
		PF_DXT1 = 5,
		PF_DXT3 = 6,
		PF_DXT5 = 7,
		PF_UYVY = 8,
		PF_FloatRGB = 9,
		PF_FloatRGBA = 10,
		PF_DepthStencil = 11,
		PF_ShadowDepth = 12,
		PF_FilteredShadowDepth = 13,
		PF_R32F = 14,
		PF_G16R16 = 15,
		PF_G16R16F = 16,
		PF_G16R16F_FILTER = 17,
		PF_G32R32F = 18,
		PF_A2B10G10R10 = 19,
		PF_A16B16G16R16 = 20,
		PF_D24 = 21,
		PF_R16F = 22,
		PF_R16F_FILTER = 23,
		PF_BC5 = 24,
		PF_V8U8 = 25,
		PF_A1 = 26,
		PF_MAX = 27,
	}
	enum TextureFilter : ubyte
	{
		TF_Nearest = 0,
		TF_Linear = 1,
		TF_MAX = 2,
	}
	enum TextureAddress : ubyte
	{
		TA_Wrap = 0,
		TA_Clamp = 1,
		TA_Mirror = 2,
		TA_MAX = 3,
	}
	enum TextureGroup : ubyte
	{
		TEXTUREGROUP_World = 0,
		TEXTUREGROUP_WorldNormalMap = 1,
		TEXTUREGROUP_WorldSpecular = 2,
		TEXTUREGROUP_Character = 3,
		TEXTUREGROUP_CharacterNormalMap = 4,
		TEXTUREGROUP_CharacterSpecular = 5,
		TEXTUREGROUP_Weapon = 6,
		TEXTUREGROUP_WeaponNormalMap = 7,
		TEXTUREGROUP_WeaponSpecular = 8,
		TEXTUREGROUP_Vehicle = 9,
		TEXTUREGROUP_VehicleNormalMap = 10,
		TEXTUREGROUP_VehicleSpecular = 11,
		TEXTUREGROUP_Cinematic = 12,
		TEXTUREGROUP_Effects = 13,
		TEXTUREGROUP_EffectsNotFiltered = 14,
		TEXTUREGROUP_Skybox = 15,
		TEXTUREGROUP_UI = 16,
		TEXTUREGROUP_Lightmap = 17,
		TEXTUREGROUP_RenderTarget = 18,
		TEXTUREGROUP_MobileFlattened = 19,
		TEXTUREGROUP_ProcBuilding_Face = 20,
		TEXTUREGROUP_ProcBuilding_LightMap = 21,
		TEXTUREGROUP_Shadowmap = 22,
		TEXTUREGROUP_ColorLookupTable = 23,
		TEXTUREGROUP_Terrain_Heightmap = 24,
		TEXTUREGROUP_Terrain_Weightmap = 25,
		TEXTUREGROUP_ImageBasedReflection = 26,
		TEXTUREGROUP_MAX = 27,
	}
	enum TextureMipGenSettings : ubyte
	{
		TMGS_FromTextureGroup = 0,
		TMGS_SimpleAverage = 1,
		TMGS_Sharpen0 = 2,
		TMGS_Sharpen1 = 3,
		TMGS_Sharpen2 = 4,
		TMGS_Sharpen3 = 5,
		TMGS_Sharpen4 = 6,
		TMGS_Sharpen5 = 7,
		TMGS_Sharpen6 = 8,
		TMGS_Sharpen7 = 9,
		TMGS_Sharpen8 = 10,
		TMGS_Sharpen9 = 11,
		TMGS_Sharpen10 = 12,
		TMGS_NoMipmaps = 13,
		TMGS_LeaveExistingMips = 14,
		TMGS_Blur1 = 15,
		TMGS_Blur2 = 16,
		TMGS_Blur3 = 17,
		TMGS_Blur4 = 18,
		TMGS_Blur5 = 19,
		TMGS_MAX = 20,
	}
	struct TextureGroupContainer
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Texture.TextureGroupContainer")); }
		@property final
		{
			bool TEXTUREGROUP_ImageBasedReflection() { mixin(MGBPS(0, 0x4000000)); }
			bool TEXTUREGROUP_ImageBasedReflection(bool val) { mixin(MSBPS(0, 0x4000000)); }
			bool TEXTUREGROUP_Terrain_Weightmap() { mixin(MGBPS(0, 0x2000000)); }
			bool TEXTUREGROUP_Terrain_Weightmap(bool val) { mixin(MSBPS(0, 0x2000000)); }
			bool TEXTUREGROUP_Terrain_Heightmap() { mixin(MGBPS(0, 0x1000000)); }
			bool TEXTUREGROUP_Terrain_Heightmap(bool val) { mixin(MSBPS(0, 0x1000000)); }
			bool TEXTUREGROUP_ColorLookupTable() { mixin(MGBPS(0, 0x800000)); }
			bool TEXTUREGROUP_ColorLookupTable(bool val) { mixin(MSBPS(0, 0x800000)); }
			bool TEXTUREGROUP_Shadowmap() { mixin(MGBPS(0, 0x400000)); }
			bool TEXTUREGROUP_Shadowmap(bool val) { mixin(MSBPS(0, 0x400000)); }
			bool TEXTUREGROUP_ProcBuilding_LightMap() { mixin(MGBPS(0, 0x200000)); }
			bool TEXTUREGROUP_ProcBuilding_LightMap(bool val) { mixin(MSBPS(0, 0x200000)); }
			bool TEXTUREGROUP_ProcBuilding_Face() { mixin(MGBPS(0, 0x100000)); }
			bool TEXTUREGROUP_ProcBuilding_Face(bool val) { mixin(MSBPS(0, 0x100000)); }
			bool TEXTUREGROUP_MobileFlattened() { mixin(MGBPS(0, 0x80000)); }
			bool TEXTUREGROUP_MobileFlattened(bool val) { mixin(MSBPS(0, 0x80000)); }
			bool TEXTUREGROUP_RenderTarget() { mixin(MGBPS(0, 0x40000)); }
			bool TEXTUREGROUP_RenderTarget(bool val) { mixin(MSBPS(0, 0x40000)); }
			bool TEXTUREGROUP_Lightmap() { mixin(MGBPS(0, 0x20000)); }
			bool TEXTUREGROUP_Lightmap(bool val) { mixin(MSBPS(0, 0x20000)); }
			bool TEXTUREGROUP_UI() { mixin(MGBPS(0, 0x10000)); }
			bool TEXTUREGROUP_UI(bool val) { mixin(MSBPS(0, 0x10000)); }
			bool TEXTUREGROUP_Skybox() { mixin(MGBPS(0, 0x8000)); }
			bool TEXTUREGROUP_Skybox(bool val) { mixin(MSBPS(0, 0x8000)); }
			bool TEXTUREGROUP_EffectsNotFiltered() { mixin(MGBPS(0, 0x4000)); }
			bool TEXTUREGROUP_EffectsNotFiltered(bool val) { mixin(MSBPS(0, 0x4000)); }
			bool TEXTUREGROUP_Effects() { mixin(MGBPS(0, 0x2000)); }
			bool TEXTUREGROUP_Effects(bool val) { mixin(MSBPS(0, 0x2000)); }
			bool TEXTUREGROUP_Cinematic() { mixin(MGBPS(0, 0x1000)); }
			bool TEXTUREGROUP_Cinematic(bool val) { mixin(MSBPS(0, 0x1000)); }
			bool TEXTUREGROUP_VehicleSpecular() { mixin(MGBPS(0, 0x800)); }
			bool TEXTUREGROUP_VehicleSpecular(bool val) { mixin(MSBPS(0, 0x800)); }
			bool TEXTUREGROUP_VehicleNormalMap() { mixin(MGBPS(0, 0x400)); }
			bool TEXTUREGROUP_VehicleNormalMap(bool val) { mixin(MSBPS(0, 0x400)); }
			bool TEXTUREGROUP_Vehicle() { mixin(MGBPS(0, 0x200)); }
			bool TEXTUREGROUP_Vehicle(bool val) { mixin(MSBPS(0, 0x200)); }
			bool TEXTUREGROUP_WeaponSpecular() { mixin(MGBPS(0, 0x100)); }
			bool TEXTUREGROUP_WeaponSpecular(bool val) { mixin(MSBPS(0, 0x100)); }
			bool TEXTUREGROUP_WeaponNormalMap() { mixin(MGBPS(0, 0x80)); }
			bool TEXTUREGROUP_WeaponNormalMap(bool val) { mixin(MSBPS(0, 0x80)); }
			bool TEXTUREGROUP_Weapon() { mixin(MGBPS(0, 0x40)); }
			bool TEXTUREGROUP_Weapon(bool val) { mixin(MSBPS(0, 0x40)); }
			bool TEXTUREGROUP_CharacterSpecular() { mixin(MGBPS(0, 0x20)); }
			bool TEXTUREGROUP_CharacterSpecular(bool val) { mixin(MSBPS(0, 0x20)); }
			bool TEXTUREGROUP_CharacterNormalMap() { mixin(MGBPS(0, 0x10)); }
			bool TEXTUREGROUP_CharacterNormalMap(bool val) { mixin(MSBPS(0, 0x10)); }
			bool TEXTUREGROUP_Character() { mixin(MGBPS(0, 0x8)); }
			bool TEXTUREGROUP_Character(bool val) { mixin(MSBPS(0, 0x8)); }
			bool TEXTUREGROUP_WorldSpecular() { mixin(MGBPS(0, 0x4)); }
			bool TEXTUREGROUP_WorldSpecular(bool val) { mixin(MSBPS(0, 0x4)); }
			bool TEXTUREGROUP_WorldNormalMap() { mixin(MGBPS(0, 0x2)); }
			bool TEXTUREGROUP_WorldNormalMap(bool val) { mixin(MSBPS(0, 0x2)); }
			bool TEXTUREGROUP_World() { mixin(MGBPS(0, 0x1)); }
			bool TEXTUREGROUP_World(bool val) { mixin(MSBPS(0, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			int InternalFormatLODBias() { mixin(MGPC("int", 232)); }
			float AdjustHue() { mixin(MGPC("float", 228)); }
			float AdjustRGBCurve() { mixin(MGPC("float", 224)); }
			float AdjustSaturation() { mixin(MGPC("float", 220)); }
			float AdjustVibrance() { mixin(MGPC("float", 216)); }
			float AdjustBrightnessCurve() { mixin(MGPC("float", 212)); }
			float AdjustBrightness() { mixin(MGPC("float", 208)); }
			UObject.Guid LightingGuid() { mixin(MGPC("UObject.Guid", 192)); }
			Pointer Resource() { mixin(MGPC("Pointer", 188)); }
			ScriptString SourceFileTimestamp() { mixin(MGPC("ScriptString", 176)); }
			ScriptString SourceFilePath() { mixin(MGPC("ScriptString", 164)); }
			int NumCinematicMipLevels() { mixin(MGPC("int", 160)); }
			int CachedCombinedLODBias() { mixin(MGPC("int", 156)); }
			int LODBias() { mixin(MGPC("int", 152)); }
			Texture.TextureMipGenSettings MipGenSettings() { mixin(MGPC("Texture.TextureMipGenSettings", 151)); }
			// WARNING: Property 'LODGroup' has the same name as a defined type!
			Texture.TextureFilter Filter() { mixin(MGPC("Texture.TextureFilter", 149)); }
			Texture.TextureCompressionSettings CompressionSettings() { mixin(MGPC("Texture.TextureCompressionSettings", 148)); }
			UObject.UntypedBulkData_Mirror SourceArt() { mixin(MGPC("UObject.UntypedBulkData_Mirror", 96)); }
			float UnpackMax() { mixin(MGPC("float", 80)); }
			float UnpackMin() { mixin(MGPC("float", 64)); }
		}
		bool bUseCinematicMipLevels() { mixin(MGBPC(60, 0x20000)); }
		bool bUseCinematicMipLevels(bool val) { mixin(MSBPC(60, 0x20000)); }
		bool bAsyncResourceReleaseHasBeenStarted() { mixin(MGBPC(60, 0x10000)); }
		bool bAsyncResourceReleaseHasBeenStarted(bool val) { mixin(MSBPC(60, 0x10000)); }
		bool bForcePVRTC4() { mixin(MGBPC(60, 0x8000)); }
		bool bForcePVRTC4(bool val) { mixin(MSBPC(60, 0x8000)); }
		bool bNoTiling() { mixin(MGBPC(60, 0x4000)); }
		bool bNoTiling(bool val) { mixin(MSBPC(60, 0x4000)); }
		bool bPreserveBorderA() { mixin(MGBPC(60, 0x2000)); }
		bool bPreserveBorderA(bool val) { mixin(MSBPC(60, 0x2000)); }
		bool bPreserveBorderB() { mixin(MGBPC(60, 0x1000)); }
		bool bPreserveBorderB(bool val) { mixin(MSBPC(60, 0x1000)); }
		bool bPreserveBorderG() { mixin(MGBPC(60, 0x800)); }
		bool bPreserveBorderG(bool val) { mixin(MSBPC(60, 0x800)); }
		bool bPreserveBorderR() { mixin(MGBPC(60, 0x400)); }
		bool bPreserveBorderR(bool val) { mixin(MSBPC(60, 0x400)); }
		bool bDitherMipMapAlpha() { mixin(MGBPC(60, 0x200)); }
		bool bDitherMipMapAlpha(bool val) { mixin(MSBPC(60, 0x200)); }
		bool NeverStream() { mixin(MGBPC(60, 0x100)); }
		bool NeverStream(bool val) { mixin(MSBPC(60, 0x100)); }
		bool DeferCompression() { mixin(MGBPC(60, 0x80)); }
		bool DeferCompression(bool val) { mixin(MSBPC(60, 0x80)); }
		bool CompressionFullDynamicRange() { mixin(MGBPC(60, 0x40)); }
		bool CompressionFullDynamicRange(bool val) { mixin(MSBPC(60, 0x40)); }
		bool CompressionNoMipmaps() { mixin(MGBPC(60, 0x20)); }
		bool CompressionNoMipmaps(bool val) { mixin(MSBPC(60, 0x20)); }
		bool CompressionNone() { mixin(MGBPC(60, 0x10)); }
		bool CompressionNone(bool val) { mixin(MSBPC(60, 0x10)); }
		bool CompressionNoAlpha() { mixin(MGBPC(60, 0x8)); }
		bool CompressionNoAlpha(bool val) { mixin(MSBPC(60, 0x8)); }
		bool bIsSourceArtUncompressed() { mixin(MGBPC(60, 0x4)); }
		bool bIsSourceArtUncompressed(bool val) { mixin(MSBPC(60, 0x4)); }
		bool RGBE() { mixin(MGBPC(60, 0x2)); }
		bool RGBE(bool val) { mixin(MSBPC(60, 0x2)); }
		bool SRGB() { mixin(MGBPC(60, 0x1)); }
		bool SRGB(bool val) { mixin(MSBPC(60, 0x1)); }
	}
}
