module UnrealScript.Engine.Engine;

import ScriptClasses;
import UnrealScript.Engine.TranslationContext;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Subsystem;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.Client;
import UnrealScript.Engine.GameViewportClient;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.ApexDestructibleDamageParameters;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.Font;

extern(C++) interface Engine : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Engine")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsGame;
			ScriptFunction mIsEditor;
			ScriptFunction mGetSmallFont;
			ScriptFunction mGetAudioDevice;
			ScriptFunction mIsSplitScreen;
			ScriptFunction mGetTinyFont;
			ScriptFunction mGetMediumFont;
			ScriptFunction mGetLargeFont;
			ScriptFunction mGetCurrentWorldInfo;
			ScriptFunction mGetBuildDate;
			ScriptFunction mGetSubtitleFont;
			ScriptFunction mGetAdditionalFont;
			ScriptFunction mGetLastMovieName;
			ScriptFunction mPlayLoadMapMovie;
			ScriptFunction mStopMovie;
			ScriptFunction mRemoveAllOverlays;
			ScriptFunction mAddOverlay;
			ScriptFunction mAddOverlayWrapped;
			ScriptFunction mGetEngine;
			ScriptFunction mGetWorldPostProcessChain;
			ScriptFunction mAddTextureStreamingSlaveLoc;
			ScriptFunction mBasicSaveObject;
			ScriptFunction mBasicLoadObject;
		}
		public @property static final
		{
			ScriptFunction IsGame() { return mIsGame ? mIsGame : (mIsGame = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.IsGame")); }
			ScriptFunction IsEditor() { return mIsEditor ? mIsEditor : (mIsEditor = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.IsEditor")); }
			ScriptFunction GetSmallFont() { return mGetSmallFont ? mGetSmallFont : (mGetSmallFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetSmallFont")); }
			ScriptFunction GetAudioDevice() { return mGetAudioDevice ? mGetAudioDevice : (mGetAudioDevice = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetAudioDevice")); }
			ScriptFunction IsSplitScreen() { return mIsSplitScreen ? mIsSplitScreen : (mIsSplitScreen = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.IsSplitScreen")); }
			ScriptFunction GetTinyFont() { return mGetTinyFont ? mGetTinyFont : (mGetTinyFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetTinyFont")); }
			ScriptFunction GetMediumFont() { return mGetMediumFont ? mGetMediumFont : (mGetMediumFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetMediumFont")); }
			ScriptFunction GetLargeFont() { return mGetLargeFont ? mGetLargeFont : (mGetLargeFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetLargeFont")); }
			ScriptFunction GetCurrentWorldInfo() { return mGetCurrentWorldInfo ? mGetCurrentWorldInfo : (mGetCurrentWorldInfo = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetCurrentWorldInfo")); }
			ScriptFunction GetBuildDate() { return mGetBuildDate ? mGetBuildDate : (mGetBuildDate = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetBuildDate")); }
			ScriptFunction GetSubtitleFont() { return mGetSubtitleFont ? mGetSubtitleFont : (mGetSubtitleFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetSubtitleFont")); }
			ScriptFunction GetAdditionalFont() { return mGetAdditionalFont ? mGetAdditionalFont : (mGetAdditionalFont = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetAdditionalFont")); }
			ScriptFunction GetLastMovieName() { return mGetLastMovieName ? mGetLastMovieName : (mGetLastMovieName = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetLastMovieName")); }
			ScriptFunction PlayLoadMapMovie() { return mPlayLoadMapMovie ? mPlayLoadMapMovie : (mPlayLoadMapMovie = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.PlayLoadMapMovie")); }
			ScriptFunction StopMovie() { return mStopMovie ? mStopMovie : (mStopMovie = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.StopMovie")); }
			ScriptFunction RemoveAllOverlays() { return mRemoveAllOverlays ? mRemoveAllOverlays : (mRemoveAllOverlays = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.RemoveAllOverlays")); }
			ScriptFunction AddOverlay() { return mAddOverlay ? mAddOverlay : (mAddOverlay = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.AddOverlay")); }
			ScriptFunction AddOverlayWrapped() { return mAddOverlayWrapped ? mAddOverlayWrapped : (mAddOverlayWrapped = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.AddOverlayWrapped")); }
			ScriptFunction GetEngine() { return mGetEngine ? mGetEngine : (mGetEngine = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetEngine")); }
			ScriptFunction GetWorldPostProcessChain() { return mGetWorldPostProcessChain ? mGetWorldPostProcessChain : (mGetWorldPostProcessChain = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.GetWorldPostProcessChain")); }
			ScriptFunction AddTextureStreamingSlaveLoc() { return mAddTextureStreamingSlaveLoc ? mAddTextureStreamingSlaveLoc : (mAddTextureStreamingSlaveLoc = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.AddTextureStreamingSlaveLoc")); }
			ScriptFunction BasicSaveObject() { return mBasicSaveObject ? mBasicSaveObject : (mBasicSaveObject = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.BasicSaveObject")); }
			ScriptFunction BasicLoadObject() { return mBasicLoadObject ? mBasicLoadObject : (mBasicLoadObject = ScriptObject.Find!(ScriptFunction)("Function Engine.Engine.BasicLoadObject")); }
		}
	}
	enum ETransitionType : ubyte
	{
		TT_None = 0,
		TT_Paused = 1,
		TT_Loading = 2,
		TT_Saving = 3,
		TT_Connecting = 4,
		TT_Precaching = 5,
		TT_MAX = 6,
	}
	struct StatColorMapping
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Engine.StatColorMapping")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(Engine.StatColorMapEntry) ColorMap() { return *cast(ScriptArray!(Engine.StatColorMapEntry)*)(cast(size_t)&this + 12); }
				ScriptString StatName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool DisableBlend() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool DisableBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct DropNoteInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Engine.DropNoteInfo")); }
		@property final auto ref
		{
			ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	struct StatColorMapEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Engine.StatColorMapEntry")); }
		@property final auto ref
		{
			UObject.Color Out() { return *cast(UObject.Color*)(cast(size_t)&this + 4); }
			float In() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LocalPlayer) GamePlayers() { return *cast(ScriptArray!(LocalPlayer)*)(cast(size_t)cast(void*)this + 1152); }
			ScriptArray!(Font) AdditionalFonts() { return *cast(ScriptArray!(Font)*)(cast(size_t)cast(void*)this + 144); }
			ScriptArray!(ScriptString) AdditionalFontNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 156); }
			ScriptArray!(UObject.Color) LightComplexityColors() { return *cast(ScriptArray!(UObject.Color)*)(cast(size_t)cast(void*)this + 692); }
			ScriptArray!(UObject.LinearColor) ShaderComplexityColors() { return *cast(ScriptArray!(UObject.LinearColor)*)(cast(size_t)cast(void*)this + 704); }
			ScriptArray!(Engine.StatColorMapping) StatColorMappings() { return *cast(ScriptArray!(Engine.StatColorMapping)*)(cast(size_t)cast(void*)this + 784); }
			ScriptArray!(ScriptString) DeferredCommands() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1168); }
			ScriptArray!(Engine.DropNoteInfo) PendingDroppedNotes() { return *cast(ScriptArray!(Engine.DropNoteInfo)*)(cast(size_t)cast(void*)this + 1360); }
			ScriptArray!(ScriptName) IgnoreSimulatedFuncWarnings() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1460); }
			TranslationContext GlobalTranslationContext() { return *cast(TranslationContext*)(cast(size_t)cast(void*)this + 1480); }
			UObject.Pointer ScreenSaverInhibitor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1476); }
			int ScreenSaverInhibitorSemaphore() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
			UObject.LinearColor UnselectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1444); }
			UObject.LinearColor SelectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1428); }
			UObject.LinearColor DefaultHoveredMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1412); }
			UObject.LinearColor DefaultSelectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1396); }
			float TrackedOcclusionStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1392); }
			float MaxTrackedOcclusionIncrement() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
			float NetClientTicksPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
			ScriptString DynamicCoverMeshComponentName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1372); }
			int BeginUPTryCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1356); }
			int MaxParticleSubUVCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1352); }
			int MaxParticleSpriteCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1348); }
			int MaxParticleVertexMemory() { return *cast(int*)(cast(size_t)cast(void*)this + 1344); }
			int MaxParticleResizeWarn() { return *cast(int*)(cast(size_t)cast(void*)this + 1340); }
			int MaxParticleResize() { return *cast(int*)(cast(size_t)cast(void*)this + 1336); }
			float FluidSimulationTimeLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 1332); }
			int MaxFluidNumVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1328); }
			float MaxOcclusionPixelsFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 1324); }
			float PercentUnoccludedRequeries() { return *cast(float*)(cast(size_t)cast(void*)this + 1320); }
			float PrimitiveProbablyVisibleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
			float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
			float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1308); }
			float MeshLODRange() { return *cast(float*)(cast(size_t)cast(void*)this + 1304); }
			ScriptString TransitionGameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1292); }
			ScriptString TransitionDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1280); }
			Engine.ETransitionType TransitionType() { return *cast(Engine.ETransitionType*)(cast(size_t)cast(void*)this + 1276); }
			ScriptString ScoutClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
			float StreamingDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
			UObject.Color C_BrushShape() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1256); }
			UObject.Color C_Volume() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1252); }
			UObject.Color C_OrthoBackground() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1248); }
			UObject.Color C_BSPCollision() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1244); }
			UObject.Color C_VolumeCollision() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1240); }
			UObject.Color C_ScaleBoxHi() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1236); }
			UObject.Color C_WireBackground() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1232); }
			UObject.Color C_NonSolidWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1228); }
			UObject.Color C_SemiSolidWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1224); }
			UObject.Color C_SubtractWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1220); }
			UObject.Color C_AddWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1216); }
			UObject.Color C_BrushWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1212); }
			UObject.Color C_WorldBox() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1208); }
			UObject.Pointer MobileMaterialEmulator() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1204); }
			UObject.Pointer RemoteControlExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1200); }
			float MinSmoothedFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
			float MaxSmoothedFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
			int ClientCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1188); }
			int GameCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1184); }
			int TickCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1180); }
			GameViewportClient GameViewport() { return *cast(GameViewportClient*)(cast(size_t)cast(void*)this + 1164); }
			// WARNING: Property 'Client' has the same name as a defined type!
			float TimeBetweenPurgingPendingKillObjects() { return *cast(float*)(cast(size_t)cast(void*)this + 1144); }
			ScriptString DefaultSoundName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1132); }
			SoundNodeWave DefaultSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 1128); }
			ScriptString LightMapDensityNormalName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
			Texture2D LightMapDensityNormal() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1112); }
			ScriptString LightMapDensityTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1100); }
			Texture2D LightMapDensityTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1096); }
			ScriptString WeightMapPlaceholderTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1084); }
			Texture WeightMapPlaceholderTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 1080); }
			ScriptString RandomMirrorDiscTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
			Texture2D RandomMirrorDiscTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1064); }
			ScriptString RandomNormalTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1052); }
			Texture2D RandomNormalTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1048); }
			ScriptString RandomAngleTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1036); }
			Texture2D RandomAngleTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1032); }
			ScriptString ScreenDoorNoiseTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
			Texture2D ScreenDoorNoiseTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1016); }
			ScriptString SceneCaptureCubeActorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1004); }
			Material SceneCaptureCubeActorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1000); }
			ScriptString SceneCaptureReflectActorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 988); }
			Material SceneCaptureReflectActorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 984); }
			ScriptString DefaultUICaretMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
			Material DefaultUICaretMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 968); }
			ScriptString DefaultUIScenePostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 956); }
			PostProcessChain DefaultUIScenePostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 952); }
			ScriptString ThumbnailMaterialPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 940); }
			PostProcessChain ThumbnailMaterialPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 936); }
			ScriptString ThumbnailParticleSystemPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
			PostProcessChain ThumbnailParticleSystemPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 920); }
			ScriptString ThumbnailSkeletalMeshPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 908); }
			PostProcessChain ThumbnailSkeletalMeshPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 904); }
			ScriptString DefaultPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 892); }
			PostProcessChain DefaultPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 888); }
			ScriptString DefaultOnlineSubsystemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
			ScriptClass OnlineSubsystemClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 872); }
			float TerrainTessellationCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
			int TerrainTessellationCheckCount() { return *cast(int*)(cast(size_t)cast(void*)this + 864); }
			int TerrainMaterialMaxTextureCount() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
			ScriptString TerrainErrorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 848); }
			Material TerrainErrorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 844); }
			ScriptString ApexDamageParamsName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 832); }
			ApexDestructibleDamageParameters ApexDamageParams() { return *cast(ApexDestructibleDamageParameters*)(cast(size_t)cast(void*)this + 828); }
			ScriptString DefaultPhysMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
			PhysicalMaterial DefaultPhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 812); }
			ScriptString EditorBrushMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 800); }
			Material EditorBrushMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 796); }
			UObject.LinearColor LightMapDensitySelectedColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 768); }
			UObject.LinearColor LightMapDensityVertexMappedColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 752); }
			float RenderLightMapDensityColorScale() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
			float RenderLightMapDensityGrayscaleScale() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
			float MaxLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
			float IdealLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
			float MinLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
			float MaxTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
			float IdealTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
			float MinTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
			float MaxPixelShaderAdditiveComplexityCount() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
			UObject.LinearColor LightingOnlyBrightness() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 676); }
			int ImageReflectionTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 672); }
			float MaxRMSDForCombiningMappings() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
			int MaxProcBuildingLODLightingTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
			int MaxProcBuildingLODColorTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
			float ProcBuildingLODLightingTexelsPerWorldUnit() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
			float ProcBuildingLODColorTexelsPerWorldUnit() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
			ScriptString BuildingQuadStaticMeshName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 636); }
			StaticMesh BuildingQuadStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 632); }
			ScriptString ProcBuildingSimpleMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 620); }
			Material ProcBuildingSimpleMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 616); }
			ScriptString TangentColorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 604); }
			Material TangentColorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 600); }
			ScriptString BoneWeightMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
			Material BoneWeightMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 584); }
			ScriptString HeatmapMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 572); }
			Material HeatmapMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 568); }
			ScriptString VertexColorViewModeMaterialName_BlueOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 556); }
			Material VertexColorViewModeMaterial_BlueOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 552); }
			ScriptString VertexColorViewModeMaterialName_GreenOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 540); }
			Material VertexColorViewModeMaterial_GreenOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 536); }
			ScriptString VertexColorViewModeMaterialName_RedOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
			Material VertexColorViewModeMaterial_RedOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 520); }
			ScriptString VertexColorViewModeMaterialName_AlphaAsColor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
			Material VertexColorViewModeMaterial_AlphaAsColor() { return *cast(Material*)(cast(size_t)cast(void*)this + 504); }
			ScriptString VertexColorViewModeMaterialName_ColorOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
			Material VertexColorViewModeMaterial_ColorOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 488); }
			ScriptString VertexColorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
			Material VertexColorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 472); }
			ScriptString RemoveSurfaceMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 460); }
			Material RemoveSurfaceMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 456); }
			ScriptString ShadedLevelColorationUnlitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
			Material ShadedLevelColorationUnlitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 440); }
			ScriptString ShadedLevelColorationLitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
			Material ShadedLevelColorationLitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 424); }
			ScriptString LightingTexelDensityName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
			Material LightingTexelDensityMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 408); }
			ScriptString LevelColorationUnlitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
			Material LevelColorationUnlitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 392); }
			ScriptString LevelColorationLitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
			Material LevelColorationLitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 376); }
			ScriptString CrossMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 364); }
			Material CrossMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 360); }
			ScriptString TickMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 348); }
			Material TickMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 344); }
			ScriptString DefaultFogVolumeMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
			Material DefaultFogVolumeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 328); }
			ScriptString GeomMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 316); }
			Material GeomMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 312); }
			ScriptString EmissiveTexturedMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
			Material EmissiveTexturedMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 296); }
			ScriptString WireframeMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
			Material WireframeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 280); }
			ScriptString DefaultTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
			Texture DefaultTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 264); }
			ScriptString DefaultDecalMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
			Material DefaultDecalMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 248); }
			ScriptString DefaultMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
			Material DefaultMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 232); }
			ScriptString LocalPlayerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
			ScriptClass LocalPlayerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 216); }
			ScriptString DataStoreClientClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
			ScriptClass DataStoreClientClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 200); }
			ScriptString GameViewportClientClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
			ScriptClass GameViewportClientClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 184); }
			ScriptString ConsoleClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
			ScriptClass ConsoleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 168); }
			ScriptString SubtitleFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			Font SubtitleFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 128); }
			ScriptString LargeFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
			Font LargeFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 112); }
			ScriptString MediumFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
			Font MediumFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 96); }
			ScriptString SmallFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
			Font SmallFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 80); }
			ScriptString TinyFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
			Font TinyFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bDisableAILogging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40000000) != 0; }
		bool bDisableAILogging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40000000; } return val; }
		bool bCookSeparateSharedMPGameContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20000000) != 0; }
		bool bCookSeparateSharedMPGameContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20000000; } return val; }
		bool bSuppressMapWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10000000) != 0; }
		bool bSuppressMapWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10000000; } return val; }
		bool bEnableOnScreenDebugMessagesDisplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8000000) != 0; }
		bool bEnableOnScreenDebugMessagesDisplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8000000; } return val; }
		bool bEnableOnScreenDebugMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4000000) != 0; }
		bool bEnableOnScreenDebugMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4000000; } return val; }
		bool bEmulateMobileRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2000000) != 0; }
		bool bEmulateMobileRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2000000; } return val; }
		bool bHasPendingGlobalReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1000000) != 0; }
		bool bHasPendingGlobalReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1000000; } return val; }
		bool bAreConstraintsDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x800000) != 0; }
		bool bAreConstraintsDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x800000; } return val; }
		bool bEnableColorClear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x400000) != 0; }
		bool bEnableColorClear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x400000; } return val; }
		bool bCheckParticleRenderSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x200000) != 0; }
		bool bCheckParticleRenderSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x200000; } return val; }
		bool bPauseOnLossOfFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x100000) != 0; }
		bool bPauseOnLossOfFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x100000; } return val; }
		bool bDisablePhysXHardwareSupport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x80000) != 0; }
		bool bDisablePhysXHardwareSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x80000; } return val; }
		bool bRenderTerrainCollisionAsOverlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40000) != 0; }
		bool bRenderTerrainCollisionAsOverlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40000; } return val; }
		bool bAllowMatureLanguage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20000) != 0; }
		bool bAllowMatureLanguage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20000; } return val; }
		bool bEnableKismetLogging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10000) != 0; }
		bool bEnableKismetLogging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10000; } return val; }
		bool bOnScreenKismetWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8000) != 0; }
		bool bOnScreenKismetWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8000; } return val; }
		bool bUsePostProcessEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4000) != 0; }
		bool bUsePostProcessEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4000; } return val; }
		bool bForceCPUSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2000) != 0; }
		bool bForceCPUSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2000; } return val; }
		bool bForceStaticTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1000) != 0; }
		bool bForceStaticTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1000; } return val; }
		bool bShouldGenerateSimpleLightmaps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x800) != 0; }
		bool bShouldGenerateSimpleLightmaps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x800; } return val; }
		bool HACK_EnableDMC() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x400) != 0; }
		bool HACK_EnableDMC(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x400; } return val; }
		bool HACK_UseTickFrequency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x200) != 0; }
		bool HACK_UseTickFrequency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x200; } return val; }
		bool bSmoothFrameRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x100) != 0; }
		bool bSmoothFrameRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x100; } return val; }
		bool bSubtitlesForcedOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x80) != 0; }
		bool bSubtitlesForcedOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x80; } return val; }
		bool bSubtitlesEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40) != 0; }
		bool bSubtitlesEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40; } return val; }
		bool bUseBackgroundLevelStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20) != 0; }
		bool bUseBackgroundLevelStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20; } return val; }
		bool bUseSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10) != 0; }
		bool bUseSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10; } return val; }
		bool bRenderLightMapDensityGrayscale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8) != 0; }
		bool bRenderLightMapDensityGrayscale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8; } return val; }
		bool bCombineSimilarMappings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4) != 0; }
		bool bCombineSimilarMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4; } return val; }
		bool ForcePowerOfTwoProcBuildingLODTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2) != 0; }
		bool ForcePowerOfTwoProcBuildingLODTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2; } return val; }
		bool UseProcBuildingLODTextureCropping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1) != 0; }
		bool UseProcBuildingLODTextureCropping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1; } return val; }
	}
final:
	static bool IsGame()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsGame, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static bool IsEditor()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsEditor, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static Font GetSmallFont()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetSmallFont, params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	static AudioDevice GetAudioDevice()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetAudioDevice, params.ptr, cast(void*)0);
		return *cast(AudioDevice*)params.ptr;
	}
	static bool IsSplitScreen()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.IsSplitScreen, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static Font GetTinyFont()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetTinyFont, params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	static Font GetMediumFont()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetMediumFont, params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	static Font GetLargeFont()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetLargeFont, params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	static WorldInfo GetCurrentWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetCurrentWorldInfo, params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	static ScriptString GetBuildDate()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetBuildDate, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static Font GetSubtitleFont()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetSubtitleFont, params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	static Font GetAdditionalFont(int AdditionalFontIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AdditionalFontIndex;
		StaticClass.ProcessEvent(Functions.GetAdditionalFont, params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	static ScriptString GetLastMovieName()
	{
		ubyte params[12];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetLastMovieName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	static bool PlayLoadMapMovie()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.PlayLoadMapMovie, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	static void StopMovie(bool bDelayStopUntilGameHasRendered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDelayStopUntilGameHasRendered;
		StaticClass.ProcessEvent(Functions.StopMovie, params.ptr, cast(void*)0);
	}
	static void RemoveAllOverlays()
	{
		StaticClass.ProcessEvent(Functions.RemoveAllOverlays, cast(void*)0, cast(void*)0);
	}
	static void AddOverlay(Font pFont, ScriptString Text, float X, float Y, float ScaleX, float ScaleY, bool bIsCentered)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Font*)params.ptr = pFont;
		*cast(ScriptString*)&params[4] = Text;
		*cast(float*)&params[16] = X;
		*cast(float*)&params[20] = Y;
		*cast(float*)&params[24] = ScaleX;
		*cast(float*)&params[28] = ScaleY;
		*cast(bool*)&params[32] = bIsCentered;
		StaticClass.ProcessEvent(Functions.AddOverlay, params.ptr, cast(void*)0);
	}
	static void AddOverlayWrapped(Font pFont, ScriptString Text, float X, float Y, float ScaleX, float ScaleY, float WrapWidth)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Font*)params.ptr = pFont;
		*cast(ScriptString*)&params[4] = Text;
		*cast(float*)&params[16] = X;
		*cast(float*)&params[20] = Y;
		*cast(float*)&params[24] = ScaleX;
		*cast(float*)&params[28] = ScaleY;
		*cast(float*)&params[32] = WrapWidth;
		StaticClass.ProcessEvent(Functions.AddOverlayWrapped, params.ptr, cast(void*)0);
	}
	static Engine GetEngine()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetEngine, params.ptr, cast(void*)0);
		return *cast(Engine*)params.ptr;
	}
	static PostProcessChain GetWorldPostProcessChain()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetWorldPostProcessChain, params.ptr, cast(void*)0);
		return *cast(PostProcessChain*)params.ptr;
	}
	void AddTextureStreamingSlaveLoc(Vector InLoc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InLoc;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTextureStreamingSlaveLoc, params.ptr, cast(void*)0);
	}
	static bool BasicSaveObject(UObject Obj, ScriptString PathName, bool bIsSaveGame, int Version)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = PathName;
		*cast(bool*)&params[16] = bIsSaveGame;
		*cast(int*)&params[20] = Version;
		StaticClass.ProcessEvent(Functions.BasicSaveObject, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	static bool BasicLoadObject(UObject Obj, ScriptString PathName, bool bIsSaveGame, int Version)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = PathName;
		*cast(bool*)&params[16] = bIsSaveGame;
		*cast(int*)&params[20] = Version;
		StaticClass.ProcessEvent(Functions.BasicLoadObject, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
