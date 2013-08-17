module UnrealScript.Engine.Engine;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Engine")()); }
	private static __gshared Engine mDefaultProperties;
	@property final static Engine DefaultProperties() { mixin(MGDPC!(Engine, "Engine Engine.Default__Engine")()); }
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
			ScriptFunction IsGame() { mixin(MGF!("mIsGame", "Function Engine.Engine.IsGame")()); }
			ScriptFunction IsEditor() { mixin(MGF!("mIsEditor", "Function Engine.Engine.IsEditor")()); }
			ScriptFunction GetSmallFont() { mixin(MGF!("mGetSmallFont", "Function Engine.Engine.GetSmallFont")()); }
			ScriptFunction GetAudioDevice() { mixin(MGF!("mGetAudioDevice", "Function Engine.Engine.GetAudioDevice")()); }
			ScriptFunction IsSplitScreen() { mixin(MGF!("mIsSplitScreen", "Function Engine.Engine.IsSplitScreen")()); }
			ScriptFunction GetTinyFont() { mixin(MGF!("mGetTinyFont", "Function Engine.Engine.GetTinyFont")()); }
			ScriptFunction GetMediumFont() { mixin(MGF!("mGetMediumFont", "Function Engine.Engine.GetMediumFont")()); }
			ScriptFunction GetLargeFont() { mixin(MGF!("mGetLargeFont", "Function Engine.Engine.GetLargeFont")()); }
			ScriptFunction GetCurrentWorldInfo() { mixin(MGF!("mGetCurrentWorldInfo", "Function Engine.Engine.GetCurrentWorldInfo")()); }
			ScriptFunction GetBuildDate() { mixin(MGF!("mGetBuildDate", "Function Engine.Engine.GetBuildDate")()); }
			ScriptFunction GetSubtitleFont() { mixin(MGF!("mGetSubtitleFont", "Function Engine.Engine.GetSubtitleFont")()); }
			ScriptFunction GetAdditionalFont() { mixin(MGF!("mGetAdditionalFont", "Function Engine.Engine.GetAdditionalFont")()); }
			ScriptFunction GetLastMovieName() { mixin(MGF!("mGetLastMovieName", "Function Engine.Engine.GetLastMovieName")()); }
			ScriptFunction PlayLoadMapMovie() { mixin(MGF!("mPlayLoadMapMovie", "Function Engine.Engine.PlayLoadMapMovie")()); }
			ScriptFunction StopMovie() { mixin(MGF!("mStopMovie", "Function Engine.Engine.StopMovie")()); }
			ScriptFunction RemoveAllOverlays() { mixin(MGF!("mRemoveAllOverlays", "Function Engine.Engine.RemoveAllOverlays")()); }
			ScriptFunction AddOverlay() { mixin(MGF!("mAddOverlay", "Function Engine.Engine.AddOverlay")()); }
			ScriptFunction AddOverlayWrapped() { mixin(MGF!("mAddOverlayWrapped", "Function Engine.Engine.AddOverlayWrapped")()); }
			ScriptFunction GetEngine() { mixin(MGF!("mGetEngine", "Function Engine.Engine.GetEngine")()); }
			ScriptFunction GetWorldPostProcessChain() { mixin(MGF!("mGetWorldPostProcessChain", "Function Engine.Engine.GetWorldPostProcessChain")()); }
			ScriptFunction AddTextureStreamingSlaveLoc() { mixin(MGF!("mAddTextureStreamingSlaveLoc", "Function Engine.Engine.AddTextureStreamingSlaveLoc")()); }
			ScriptFunction BasicSaveObject() { mixin(MGF!("mBasicSaveObject", "Function Engine.Engine.BasicSaveObject")()); }
			ScriptFunction BasicLoadObject() { mixin(MGF!("mBasicLoadObject", "Function Engine.Engine.BasicLoadObject")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Engine.StatColorMapping")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(Engine.StatColorMapEntry) ColorMap() { mixin(MGPS!(ScriptArray!(Engine.StatColorMapEntry), 12)()); }
				ScriptString StatName() { mixin(MGPS!(ScriptString, 0)()); }
			}
			bool DisableBlend() { mixin(MGBPS!(24, 0x1)()); }
			bool DisableBlend(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	struct DropNoteInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Engine.DropNoteInfo")()); }
		@property final auto ref
		{
			ScriptString Comment() { mixin(MGPS!(ScriptString, 24)()); }
			Rotator Rotation() { mixin(MGPS!(Rotator, 12)()); }
			Vector Location() { mixin(MGPS!(Vector, 0)()); }
		}
	}
	struct StatColorMapEntry
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Engine.StatColorMapEntry")()); }
		@property final auto ref
		{
			UObject.Color Out() { mixin(MGPS!(UObject.Color, 4)()); }
			float In() { mixin(MGPS!(float, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(LocalPlayer) GamePlayers() { mixin(MGPC!(ScriptArray!(LocalPlayer), 1152)()); }
			ScriptArray!(Font) AdditionalFonts() { mixin(MGPC!(ScriptArray!(Font), 144)()); }
			ScriptArray!(ScriptString) AdditionalFontNames() { mixin(MGPC!(ScriptArray!(ScriptString), 156)()); }
			ScriptArray!(UObject.Color) LightComplexityColors() { mixin(MGPC!(ScriptArray!(UObject.Color), 692)()); }
			ScriptArray!(UObject.LinearColor) ShaderComplexityColors() { mixin(MGPC!(ScriptArray!(UObject.LinearColor), 704)()); }
			ScriptArray!(Engine.StatColorMapping) StatColorMappings() { mixin(MGPC!(ScriptArray!(Engine.StatColorMapping), 784)()); }
			ScriptArray!(ScriptString) DeferredCommands() { mixin(MGPC!(ScriptArray!(ScriptString), 1168)()); }
			ScriptArray!(Engine.DropNoteInfo) PendingDroppedNotes() { mixin(MGPC!(ScriptArray!(Engine.DropNoteInfo), 1360)()); }
			ScriptArray!(ScriptName) IgnoreSimulatedFuncWarnings() { mixin(MGPC!(ScriptArray!(ScriptName), 1460)()); }
			TranslationContext GlobalTranslationContext() { mixin(MGPC!(TranslationContext, 1480)()); }
			UObject.Pointer ScreenSaverInhibitor() { mixin(MGPC!(UObject.Pointer, 1476)()); }
			int ScreenSaverInhibitorSemaphore() { mixin(MGPC!(int, 1472)()); }
			UObject.LinearColor UnselectedMaterialColor() { mixin(MGPC!(UObject.LinearColor, 1444)()); }
			UObject.LinearColor SelectedMaterialColor() { mixin(MGPC!(UObject.LinearColor, 1428)()); }
			UObject.LinearColor DefaultHoveredMaterialColor() { mixin(MGPC!(UObject.LinearColor, 1412)()); }
			UObject.LinearColor DefaultSelectedMaterialColor() { mixin(MGPC!(UObject.LinearColor, 1396)()); }
			float TrackedOcclusionStepSize() { mixin(MGPC!(float, 1392)()); }
			float MaxTrackedOcclusionIncrement() { mixin(MGPC!(float, 1388)()); }
			float NetClientTicksPerSecond() { mixin(MGPC!(float, 1384)()); }
			ScriptString DynamicCoverMeshComponentName() { mixin(MGPC!(ScriptString, 1372)()); }
			int BeginUPTryCount() { mixin(MGPC!(int, 1356)()); }
			int MaxParticleSubUVCount() { mixin(MGPC!(int, 1352)()); }
			int MaxParticleSpriteCount() { mixin(MGPC!(int, 1348)()); }
			int MaxParticleVertexMemory() { mixin(MGPC!(int, 1344)()); }
			int MaxParticleResizeWarn() { mixin(MGPC!(int, 1340)()); }
			int MaxParticleResize() { mixin(MGPC!(int, 1336)()); }
			float FluidSimulationTimeLimit() { mixin(MGPC!(float, 1332)()); }
			int MaxFluidNumVerts() { mixin(MGPC!(int, 1328)()); }
			float MaxOcclusionPixelsFraction() { mixin(MGPC!(float, 1324)()); }
			float PercentUnoccludedRequeries() { mixin(MGPC!(float, 1320)()); }
			float PrimitiveProbablyVisibleTime() { mixin(MGPC!(float, 1316)()); }
			float CameraTranslationThreshold() { mixin(MGPC!(float, 1312)()); }
			float CameraRotationThreshold() { mixin(MGPC!(float, 1308)()); }
			float MeshLODRange() { mixin(MGPC!(float, 1304)()); }
			ScriptString TransitionGameType() { mixin(MGPC!(ScriptString, 1292)()); }
			ScriptString TransitionDescription() { mixin(MGPC!(ScriptString, 1280)()); }
			Engine.ETransitionType TransitionType() { mixin(MGPC!(Engine.ETransitionType, 1276)()); }
			ScriptString ScoutClassName() { mixin(MGPC!(ScriptString, 1264)()); }
			float StreamingDistanceFactor() { mixin(MGPC!(float, 1260)()); }
			UObject.Color C_BrushShape() { mixin(MGPC!(UObject.Color, 1256)()); }
			UObject.Color C_Volume() { mixin(MGPC!(UObject.Color, 1252)()); }
			UObject.Color C_OrthoBackground() { mixin(MGPC!(UObject.Color, 1248)()); }
			UObject.Color C_BSPCollision() { mixin(MGPC!(UObject.Color, 1244)()); }
			UObject.Color C_VolumeCollision() { mixin(MGPC!(UObject.Color, 1240)()); }
			UObject.Color C_ScaleBoxHi() { mixin(MGPC!(UObject.Color, 1236)()); }
			UObject.Color C_WireBackground() { mixin(MGPC!(UObject.Color, 1232)()); }
			UObject.Color C_NonSolidWire() { mixin(MGPC!(UObject.Color, 1228)()); }
			UObject.Color C_SemiSolidWire() { mixin(MGPC!(UObject.Color, 1224)()); }
			UObject.Color C_SubtractWire() { mixin(MGPC!(UObject.Color, 1220)()); }
			UObject.Color C_AddWire() { mixin(MGPC!(UObject.Color, 1216)()); }
			UObject.Color C_BrushWire() { mixin(MGPC!(UObject.Color, 1212)()); }
			UObject.Color C_WorldBox() { mixin(MGPC!(UObject.Color, 1208)()); }
			UObject.Pointer MobileMaterialEmulator() { mixin(MGPC!(UObject.Pointer, 1204)()); }
			UObject.Pointer RemoteControlExec() { mixin(MGPC!(UObject.Pointer, 1200)()); }
			float MinSmoothedFrameRate() { mixin(MGPC!(float, 1196)()); }
			float MaxSmoothedFrameRate() { mixin(MGPC!(float, 1192)()); }
			int ClientCycles() { mixin(MGPC!(int, 1188)()); }
			int GameCycles() { mixin(MGPC!(int, 1184)()); }
			int TickCycles() { mixin(MGPC!(int, 1180)()); }
			GameViewportClient GameViewport() { mixin(MGPC!(GameViewportClient, 1164)()); }
			// WARNING: Property 'Client' has the same name as a defined type!
			float TimeBetweenPurgingPendingKillObjects() { mixin(MGPC!(float, 1144)()); }
			ScriptString DefaultSoundName() { mixin(MGPC!(ScriptString, 1132)()); }
			SoundNodeWave DefaultSound() { mixin(MGPC!(SoundNodeWave, 1128)()); }
			ScriptString LightMapDensityNormalName() { mixin(MGPC!(ScriptString, 1116)()); }
			Texture2D LightMapDensityNormal() { mixin(MGPC!(Texture2D, 1112)()); }
			ScriptString LightMapDensityTextureName() { mixin(MGPC!(ScriptString, 1100)()); }
			Texture2D LightMapDensityTexture() { mixin(MGPC!(Texture2D, 1096)()); }
			ScriptString WeightMapPlaceholderTextureName() { mixin(MGPC!(ScriptString, 1084)()); }
			Texture WeightMapPlaceholderTexture() { mixin(MGPC!(Texture, 1080)()); }
			ScriptString RandomMirrorDiscTextureName() { mixin(MGPC!(ScriptString, 1068)()); }
			Texture2D RandomMirrorDiscTexture() { mixin(MGPC!(Texture2D, 1064)()); }
			ScriptString RandomNormalTextureName() { mixin(MGPC!(ScriptString, 1052)()); }
			Texture2D RandomNormalTexture() { mixin(MGPC!(Texture2D, 1048)()); }
			ScriptString RandomAngleTextureName() { mixin(MGPC!(ScriptString, 1036)()); }
			Texture2D RandomAngleTexture() { mixin(MGPC!(Texture2D, 1032)()); }
			ScriptString ScreenDoorNoiseTextureName() { mixin(MGPC!(ScriptString, 1020)()); }
			Texture2D ScreenDoorNoiseTexture() { mixin(MGPC!(Texture2D, 1016)()); }
			ScriptString SceneCaptureCubeActorMaterialName() { mixin(MGPC!(ScriptString, 1004)()); }
			Material SceneCaptureCubeActorMaterial() { mixin(MGPC!(Material, 1000)()); }
			ScriptString SceneCaptureReflectActorMaterialName() { mixin(MGPC!(ScriptString, 988)()); }
			Material SceneCaptureReflectActorMaterial() { mixin(MGPC!(Material, 984)()); }
			ScriptString DefaultUICaretMaterialName() { mixin(MGPC!(ScriptString, 972)()); }
			Material DefaultUICaretMaterial() { mixin(MGPC!(Material, 968)()); }
			ScriptString DefaultUIScenePostProcessName() { mixin(MGPC!(ScriptString, 956)()); }
			PostProcessChain DefaultUIScenePostProcess() { mixin(MGPC!(PostProcessChain, 952)()); }
			ScriptString ThumbnailMaterialPostProcessName() { mixin(MGPC!(ScriptString, 940)()); }
			PostProcessChain ThumbnailMaterialPostProcess() { mixin(MGPC!(PostProcessChain, 936)()); }
			ScriptString ThumbnailParticleSystemPostProcessName() { mixin(MGPC!(ScriptString, 924)()); }
			PostProcessChain ThumbnailParticleSystemPostProcess() { mixin(MGPC!(PostProcessChain, 920)()); }
			ScriptString ThumbnailSkeletalMeshPostProcessName() { mixin(MGPC!(ScriptString, 908)()); }
			PostProcessChain ThumbnailSkeletalMeshPostProcess() { mixin(MGPC!(PostProcessChain, 904)()); }
			ScriptString DefaultPostProcessName() { mixin(MGPC!(ScriptString, 892)()); }
			PostProcessChain DefaultPostProcess() { mixin(MGPC!(PostProcessChain, 888)()); }
			ScriptString DefaultOnlineSubsystemName() { mixin(MGPC!(ScriptString, 876)()); }
			ScriptClass OnlineSubsystemClass() { mixin(MGPC!(ScriptClass, 872)()); }
			float TerrainTessellationCheckDistance() { mixin(MGPC!(float, 868)()); }
			int TerrainTessellationCheckCount() { mixin(MGPC!(int, 864)()); }
			int TerrainMaterialMaxTextureCount() { mixin(MGPC!(int, 860)()); }
			ScriptString TerrainErrorMaterialName() { mixin(MGPC!(ScriptString, 848)()); }
			Material TerrainErrorMaterial() { mixin(MGPC!(Material, 844)()); }
			ScriptString ApexDamageParamsName() { mixin(MGPC!(ScriptString, 832)()); }
			ApexDestructibleDamageParameters ApexDamageParams() { mixin(MGPC!(ApexDestructibleDamageParameters, 828)()); }
			ScriptString DefaultPhysMaterialName() { mixin(MGPC!(ScriptString, 816)()); }
			PhysicalMaterial DefaultPhysMaterial() { mixin(MGPC!(PhysicalMaterial, 812)()); }
			ScriptString EditorBrushMaterialName() { mixin(MGPC!(ScriptString, 800)()); }
			Material EditorBrushMaterial() { mixin(MGPC!(Material, 796)()); }
			UObject.LinearColor LightMapDensitySelectedColor() { mixin(MGPC!(UObject.LinearColor, 768)()); }
			UObject.LinearColor LightMapDensityVertexMappedColor() { mixin(MGPC!(UObject.LinearColor, 752)()); }
			float RenderLightMapDensityColorScale() { mixin(MGPC!(float, 748)()); }
			float RenderLightMapDensityGrayscaleScale() { mixin(MGPC!(float, 744)()); }
			float MaxLightMapDensity() { mixin(MGPC!(float, 740)()); }
			float IdealLightMapDensity() { mixin(MGPC!(float, 736)()); }
			float MinLightMapDensity() { mixin(MGPC!(float, 732)()); }
			float MaxTextureDensity() { mixin(MGPC!(float, 728)()); }
			float IdealTextureDensity() { mixin(MGPC!(float, 724)()); }
			float MinTextureDensity() { mixin(MGPC!(float, 720)()); }
			float MaxPixelShaderAdditiveComplexityCount() { mixin(MGPC!(float, 716)()); }
			UObject.LinearColor LightingOnlyBrightness() { mixin(MGPC!(UObject.LinearColor, 676)()); }
			int ImageReflectionTextureSize() { mixin(MGPC!(int, 672)()); }
			float MaxRMSDForCombiningMappings() { mixin(MGPC!(float, 668)()); }
			int MaxProcBuildingLODLightingTextureSize() { mixin(MGPC!(int, 660)()); }
			int MaxProcBuildingLODColorTextureSize() { mixin(MGPC!(int, 656)()); }
			float ProcBuildingLODLightingTexelsPerWorldUnit() { mixin(MGPC!(float, 652)()); }
			float ProcBuildingLODColorTexelsPerWorldUnit() { mixin(MGPC!(float, 648)()); }
			ScriptString BuildingQuadStaticMeshName() { mixin(MGPC!(ScriptString, 636)()); }
			StaticMesh BuildingQuadStaticMesh() { mixin(MGPC!(StaticMesh, 632)()); }
			ScriptString ProcBuildingSimpleMaterialName() { mixin(MGPC!(ScriptString, 620)()); }
			Material ProcBuildingSimpleMaterial() { mixin(MGPC!(Material, 616)()); }
			ScriptString TangentColorMaterialName() { mixin(MGPC!(ScriptString, 604)()); }
			Material TangentColorMaterial() { mixin(MGPC!(Material, 600)()); }
			ScriptString BoneWeightMaterialName() { mixin(MGPC!(ScriptString, 588)()); }
			Material BoneWeightMaterial() { mixin(MGPC!(Material, 584)()); }
			ScriptString HeatmapMaterialName() { mixin(MGPC!(ScriptString, 572)()); }
			Material HeatmapMaterial() { mixin(MGPC!(Material, 568)()); }
			ScriptString VertexColorViewModeMaterialName_BlueOnly() { mixin(MGPC!(ScriptString, 556)()); }
			Material VertexColorViewModeMaterial_BlueOnly() { mixin(MGPC!(Material, 552)()); }
			ScriptString VertexColorViewModeMaterialName_GreenOnly() { mixin(MGPC!(ScriptString, 540)()); }
			Material VertexColorViewModeMaterial_GreenOnly() { mixin(MGPC!(Material, 536)()); }
			ScriptString VertexColorViewModeMaterialName_RedOnly() { mixin(MGPC!(ScriptString, 524)()); }
			Material VertexColorViewModeMaterial_RedOnly() { mixin(MGPC!(Material, 520)()); }
			ScriptString VertexColorViewModeMaterialName_AlphaAsColor() { mixin(MGPC!(ScriptString, 508)()); }
			Material VertexColorViewModeMaterial_AlphaAsColor() { mixin(MGPC!(Material, 504)()); }
			ScriptString VertexColorViewModeMaterialName_ColorOnly() { mixin(MGPC!(ScriptString, 492)()); }
			Material VertexColorViewModeMaterial_ColorOnly() { mixin(MGPC!(Material, 488)()); }
			ScriptString VertexColorMaterialName() { mixin(MGPC!(ScriptString, 476)()); }
			Material VertexColorMaterial() { mixin(MGPC!(Material, 472)()); }
			ScriptString RemoveSurfaceMaterialName() { mixin(MGPC!(ScriptString, 460)()); }
			Material RemoveSurfaceMaterial() { mixin(MGPC!(Material, 456)()); }
			ScriptString ShadedLevelColorationUnlitMaterialName() { mixin(MGPC!(ScriptString, 444)()); }
			Material ShadedLevelColorationUnlitMaterial() { mixin(MGPC!(Material, 440)()); }
			ScriptString ShadedLevelColorationLitMaterialName() { mixin(MGPC!(ScriptString, 428)()); }
			Material ShadedLevelColorationLitMaterial() { mixin(MGPC!(Material, 424)()); }
			ScriptString LightingTexelDensityName() { mixin(MGPC!(ScriptString, 412)()); }
			Material LightingTexelDensityMaterial() { mixin(MGPC!(Material, 408)()); }
			ScriptString LevelColorationUnlitMaterialName() { mixin(MGPC!(ScriptString, 396)()); }
			Material LevelColorationUnlitMaterial() { mixin(MGPC!(Material, 392)()); }
			ScriptString LevelColorationLitMaterialName() { mixin(MGPC!(ScriptString, 380)()); }
			Material LevelColorationLitMaterial() { mixin(MGPC!(Material, 376)()); }
			ScriptString CrossMaterialName() { mixin(MGPC!(ScriptString, 364)()); }
			Material CrossMaterial() { mixin(MGPC!(Material, 360)()); }
			ScriptString TickMaterialName() { mixin(MGPC!(ScriptString, 348)()); }
			Material TickMaterial() { mixin(MGPC!(Material, 344)()); }
			ScriptString DefaultFogVolumeMaterialName() { mixin(MGPC!(ScriptString, 332)()); }
			Material DefaultFogVolumeMaterial() { mixin(MGPC!(Material, 328)()); }
			ScriptString GeomMaterialName() { mixin(MGPC!(ScriptString, 316)()); }
			Material GeomMaterial() { mixin(MGPC!(Material, 312)()); }
			ScriptString EmissiveTexturedMaterialName() { mixin(MGPC!(ScriptString, 300)()); }
			Material EmissiveTexturedMaterial() { mixin(MGPC!(Material, 296)()); }
			ScriptString WireframeMaterialName() { mixin(MGPC!(ScriptString, 284)()); }
			Material WireframeMaterial() { mixin(MGPC!(Material, 280)()); }
			ScriptString DefaultTextureName() { mixin(MGPC!(ScriptString, 268)()); }
			Texture DefaultTexture() { mixin(MGPC!(Texture, 264)()); }
			ScriptString DefaultDecalMaterialName() { mixin(MGPC!(ScriptString, 252)()); }
			Material DefaultDecalMaterial() { mixin(MGPC!(Material, 248)()); }
			ScriptString DefaultMaterialName() { mixin(MGPC!(ScriptString, 236)()); }
			Material DefaultMaterial() { mixin(MGPC!(Material, 232)()); }
			ScriptString LocalPlayerClassName() { mixin(MGPC!(ScriptString, 220)()); }
			ScriptClass LocalPlayerClass() { mixin(MGPC!(ScriptClass, 216)()); }
			ScriptString DataStoreClientClassName() { mixin(MGPC!(ScriptString, 204)()); }
			ScriptClass DataStoreClientClass() { mixin(MGPC!(ScriptClass, 200)()); }
			ScriptString GameViewportClientClassName() { mixin(MGPC!(ScriptString, 188)()); }
			ScriptClass GameViewportClientClass() { mixin(MGPC!(ScriptClass, 184)()); }
			ScriptString ConsoleClassName() { mixin(MGPC!(ScriptString, 172)()); }
			ScriptClass ConsoleClass() { mixin(MGPC!(ScriptClass, 168)()); }
			ScriptString SubtitleFontName() { mixin(MGPC!(ScriptString, 132)()); }
			Font SubtitleFont() { mixin(MGPC!(Font, 128)()); }
			ScriptString LargeFontName() { mixin(MGPC!(ScriptString, 116)()); }
			Font LargeFont() { mixin(MGPC!(Font, 112)()); }
			ScriptString MediumFontName() { mixin(MGPC!(ScriptString, 100)()); }
			Font MediumFont() { mixin(MGPC!(Font, 96)()); }
			ScriptString SmallFontName() { mixin(MGPC!(ScriptString, 84)()); }
			Font SmallFont() { mixin(MGPC!(Font, 80)()); }
			ScriptString TinyFontName() { mixin(MGPC!(ScriptString, 68)()); }
			Font TinyFont() { mixin(MGPC!(Font, 64)()); }
		}
		bool bDisableAILogging() { mixin(MGBPC!(664, 0x40000000)()); }
		bool bDisableAILogging(bool val) { mixin(MSBPC!(664, 0x40000000)()); }
		bool bCookSeparateSharedMPGameContent() { mixin(MGBPC!(664, 0x20000000)()); }
		bool bCookSeparateSharedMPGameContent(bool val) { mixin(MSBPC!(664, 0x20000000)()); }
		bool bSuppressMapWarnings() { mixin(MGBPC!(664, 0x10000000)()); }
		bool bSuppressMapWarnings(bool val) { mixin(MSBPC!(664, 0x10000000)()); }
		bool bEnableOnScreenDebugMessagesDisplay() { mixin(MGBPC!(664, 0x8000000)()); }
		bool bEnableOnScreenDebugMessagesDisplay(bool val) { mixin(MSBPC!(664, 0x8000000)()); }
		bool bEnableOnScreenDebugMessages() { mixin(MGBPC!(664, 0x4000000)()); }
		bool bEnableOnScreenDebugMessages(bool val) { mixin(MSBPC!(664, 0x4000000)()); }
		bool bEmulateMobileRendering() { mixin(MGBPC!(664, 0x2000000)()); }
		bool bEmulateMobileRendering(bool val) { mixin(MSBPC!(664, 0x2000000)()); }
		bool bHasPendingGlobalReattach() { mixin(MGBPC!(664, 0x1000000)()); }
		bool bHasPendingGlobalReattach(bool val) { mixin(MSBPC!(664, 0x1000000)()); }
		bool bAreConstraintsDirty() { mixin(MGBPC!(664, 0x800000)()); }
		bool bAreConstraintsDirty(bool val) { mixin(MSBPC!(664, 0x800000)()); }
		bool bEnableColorClear() { mixin(MGBPC!(664, 0x400000)()); }
		bool bEnableColorClear(bool val) { mixin(MSBPC!(664, 0x400000)()); }
		bool bCheckParticleRenderSize() { mixin(MGBPC!(664, 0x200000)()); }
		bool bCheckParticleRenderSize(bool val) { mixin(MSBPC!(664, 0x200000)()); }
		bool bPauseOnLossOfFocus() { mixin(MGBPC!(664, 0x100000)()); }
		bool bPauseOnLossOfFocus(bool val) { mixin(MSBPC!(664, 0x100000)()); }
		bool bDisablePhysXHardwareSupport() { mixin(MGBPC!(664, 0x80000)()); }
		bool bDisablePhysXHardwareSupport(bool val) { mixin(MSBPC!(664, 0x80000)()); }
		bool bRenderTerrainCollisionAsOverlay() { mixin(MGBPC!(664, 0x40000)()); }
		bool bRenderTerrainCollisionAsOverlay(bool val) { mixin(MSBPC!(664, 0x40000)()); }
		bool bAllowMatureLanguage() { mixin(MGBPC!(664, 0x20000)()); }
		bool bAllowMatureLanguage(bool val) { mixin(MSBPC!(664, 0x20000)()); }
		bool bEnableKismetLogging() { mixin(MGBPC!(664, 0x10000)()); }
		bool bEnableKismetLogging(bool val) { mixin(MSBPC!(664, 0x10000)()); }
		bool bOnScreenKismetWarnings() { mixin(MGBPC!(664, 0x8000)()); }
		bool bOnScreenKismetWarnings(bool val) { mixin(MSBPC!(664, 0x8000)()); }
		bool bUsePostProcessEffects() { mixin(MGBPC!(664, 0x4000)()); }
		bool bUsePostProcessEffects(bool val) { mixin(MSBPC!(664, 0x4000)()); }
		bool bForceCPUSkinning() { mixin(MGBPC!(664, 0x2000)()); }
		bool bForceCPUSkinning(bool val) { mixin(MSBPC!(664, 0x2000)()); }
		bool bForceStaticTerrain() { mixin(MGBPC!(664, 0x1000)()); }
		bool bForceStaticTerrain(bool val) { mixin(MSBPC!(664, 0x1000)()); }
		bool bShouldGenerateSimpleLightmaps() { mixin(MGBPC!(664, 0x800)()); }
		bool bShouldGenerateSimpleLightmaps(bool val) { mixin(MSBPC!(664, 0x800)()); }
		bool HACK_EnableDMC() { mixin(MGBPC!(664, 0x400)()); }
		bool HACK_EnableDMC(bool val) { mixin(MSBPC!(664, 0x400)()); }
		bool HACK_UseTickFrequency() { mixin(MGBPC!(664, 0x200)()); }
		bool HACK_UseTickFrequency(bool val) { mixin(MSBPC!(664, 0x200)()); }
		bool bSmoothFrameRate() { mixin(MGBPC!(664, 0x100)()); }
		bool bSmoothFrameRate(bool val) { mixin(MSBPC!(664, 0x100)()); }
		bool bSubtitlesForcedOff() { mixin(MGBPC!(664, 0x80)()); }
		bool bSubtitlesForcedOff(bool val) { mixin(MSBPC!(664, 0x80)()); }
		bool bSubtitlesEnabled() { mixin(MGBPC!(664, 0x40)()); }
		bool bSubtitlesEnabled(bool val) { mixin(MSBPC!(664, 0x40)()); }
		bool bUseBackgroundLevelStreaming() { mixin(MGBPC!(664, 0x20)()); }
		bool bUseBackgroundLevelStreaming(bool val) { mixin(MSBPC!(664, 0x20)()); }
		bool bUseSound() { mixin(MGBPC!(664, 0x10)()); }
		bool bUseSound(bool val) { mixin(MSBPC!(664, 0x10)()); }
		bool bRenderLightMapDensityGrayscale() { mixin(MGBPC!(664, 0x8)()); }
		bool bRenderLightMapDensityGrayscale(bool val) { mixin(MSBPC!(664, 0x8)()); }
		bool bCombineSimilarMappings() { mixin(MGBPC!(664, 0x4)()); }
		bool bCombineSimilarMappings(bool val) { mixin(MSBPC!(664, 0x4)()); }
		bool ForcePowerOfTwoProcBuildingLODTextures() { mixin(MGBPC!(664, 0x2)()); }
		bool ForcePowerOfTwoProcBuildingLODTextures(bool val) { mixin(MSBPC!(664, 0x2)()); }
		bool UseProcBuildingLODTextureCropping() { mixin(MGBPC!(664, 0x1)()); }
		bool UseProcBuildingLODTextureCropping(bool val) { mixin(MSBPC!(664, 0x1)()); }
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
