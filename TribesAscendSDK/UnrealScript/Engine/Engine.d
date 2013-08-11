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
		public @property final auto ref ScriptArray!(Engine.StatColorMapEntry) ColorMap() { return *cast(ScriptArray!(Engine.StatColorMapEntry)*)(cast(size_t)&this + 12); }
		private ubyte __ColorMap[12];
		public @property final bool DisableBlend() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool DisableBlend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __DisableBlend[4];
		public @property final auto ref ScriptString StatName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __StatName[12];
	}
	struct DropNoteInfo
	{
		public @property final auto ref ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __Comment[12];
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
	}
	struct StatColorMapEntry
	{
		public @property final auto ref UObject.Color Out() { return *cast(UObject.Color*)(cast(size_t)&this + 4); }
		private ubyte __Out[4];
		public @property final auto ref float In() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __In[4];
	}
	public @property final auto ref ScriptArray!(LocalPlayer) GamePlayers() { return *cast(ScriptArray!(LocalPlayer)*)(cast(size_t)cast(void*)this + 1152); }
	public @property final auto ref ScriptArray!(Font) AdditionalFonts() { return *cast(ScriptArray!(Font)*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptArray!(ScriptString) AdditionalFontNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(UObject.Color) LightComplexityColors() { return *cast(ScriptArray!(UObject.Color)*)(cast(size_t)cast(void*)this + 692); }
	public @property final auto ref ScriptArray!(UObject.LinearColor) ShaderComplexityColors() { return *cast(ScriptArray!(UObject.LinearColor)*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref ScriptArray!(Engine.StatColorMapping) StatColorMappings() { return *cast(ScriptArray!(Engine.StatColorMapping)*)(cast(size_t)cast(void*)this + 784); }
	public @property final auto ref ScriptArray!(ScriptString) DeferredCommands() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 1168); }
	public @property final auto ref ScriptArray!(Engine.DropNoteInfo) PendingDroppedNotes() { return *cast(ScriptArray!(Engine.DropNoteInfo)*)(cast(size_t)cast(void*)this + 1360); }
	public @property final auto ref ScriptArray!(ScriptName) IgnoreSimulatedFuncWarnings() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1460); }
	public @property final auto ref TranslationContext GlobalTranslationContext() { return *cast(TranslationContext*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref UObject.Pointer ScreenSaverInhibitor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1476); }
	public @property final auto ref int ScreenSaverInhibitorSemaphore() { return *cast(int*)(cast(size_t)cast(void*)this + 1472); }
	public @property final auto ref UObject.LinearColor UnselectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref UObject.LinearColor SelectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1428); }
	public @property final auto ref UObject.LinearColor DefaultHoveredMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1412); }
	public @property final auto ref UObject.LinearColor DefaultSelectedMaterialColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1396); }
	public @property final auto ref float TrackedOcclusionStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 1392); }
	public @property final auto ref float MaxTrackedOcclusionIncrement() { return *cast(float*)(cast(size_t)cast(void*)this + 1388); }
	public @property final auto ref float NetClientTicksPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref ScriptString DynamicCoverMeshComponentName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref int BeginUPTryCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1356); }
	public @property final auto ref int MaxParticleSubUVCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1352); }
	public @property final auto ref int MaxParticleSpriteCount() { return *cast(int*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref int MaxParticleVertexMemory() { return *cast(int*)(cast(size_t)cast(void*)this + 1344); }
	public @property final auto ref int MaxParticleResizeWarn() { return *cast(int*)(cast(size_t)cast(void*)this + 1340); }
	public @property final auto ref int MaxParticleResize() { return *cast(int*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref float FluidSimulationTimeLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 1332); }
	public @property final auto ref int MaxFluidNumVerts() { return *cast(int*)(cast(size_t)cast(void*)this + 1328); }
	public @property final auto ref float MaxOcclusionPixelsFraction() { return *cast(float*)(cast(size_t)cast(void*)this + 1324); }
	public @property final auto ref float PercentUnoccludedRequeries() { return *cast(float*)(cast(size_t)cast(void*)this + 1320); }
	public @property final auto ref float PrimitiveProbablyVisibleTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1316); }
	public @property final auto ref float CameraTranslationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref float CameraRotationThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1308); }
	public @property final auto ref float MeshLODRange() { return *cast(float*)(cast(size_t)cast(void*)this + 1304); }
	public @property final auto ref ScriptString TransitionGameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1292); }
	public @property final auto ref ScriptString TransitionDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1280); }
	public @property final auto ref Engine.ETransitionType TransitionType() { return *cast(Engine.ETransitionType*)(cast(size_t)cast(void*)this + 1276); }
	public @property final auto ref ScriptString ScoutClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref float StreamingDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 1260); }
	public @property final auto ref UObject.Color C_BrushShape() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1256); }
	public @property final auto ref UObject.Color C_Volume() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1252); }
	public @property final auto ref UObject.Color C_OrthoBackground() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1248); }
	public @property final auto ref UObject.Color C_BSPCollision() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1244); }
	public @property final auto ref UObject.Color C_VolumeCollision() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1240); }
	public @property final auto ref UObject.Color C_ScaleBoxHi() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1236); }
	public @property final auto ref UObject.Color C_WireBackground() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1232); }
	public @property final auto ref UObject.Color C_NonSolidWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1228); }
	public @property final auto ref UObject.Color C_SemiSolidWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1224); }
	public @property final auto ref UObject.Color C_SubtractWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1220); }
	public @property final auto ref UObject.Color C_AddWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1216); }
	public @property final auto ref UObject.Color C_BrushWire() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1212); }
	public @property final auto ref UObject.Color C_WorldBox() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 1208); }
	public @property final auto ref UObject.Pointer MobileMaterialEmulator() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1204); }
	public @property final auto ref UObject.Pointer RemoteControlExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 1200); }
	public @property final auto ref float MinSmoothedFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1196); }
	public @property final auto ref float MaxSmoothedFrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 1192); }
	public @property final auto ref int ClientCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1188); }
	public @property final auto ref int GameCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1184); }
	public @property final auto ref int TickCycles() { return *cast(int*)(cast(size_t)cast(void*)this + 1180); }
	public @property final auto ref GameViewportClient GameViewport() { return *cast(GameViewportClient*)(cast(size_t)cast(void*)this + 1164); }
	// WARNING: Property 'Client' has the same name as a defined type!
	public @property final auto ref float TimeBetweenPurgingPendingKillObjects() { return *cast(float*)(cast(size_t)cast(void*)this + 1144); }
	public @property final auto ref ScriptString DefaultSoundName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1132); }
	public @property final auto ref SoundNodeWave DefaultSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 1128); }
	public @property final auto ref ScriptString LightMapDensityNormalName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
	public @property final auto ref Texture2D LightMapDensityNormal() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref ScriptString LightMapDensityTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref Texture2D LightMapDensityTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref ScriptString WeightMapPlaceholderTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1084); }
	public @property final auto ref Texture WeightMapPlaceholderTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 1080); }
	public @property final auto ref ScriptString RandomMirrorDiscTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref Texture2D RandomMirrorDiscTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref ScriptString RandomNormalTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref Texture2D RandomNormalTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref ScriptString RandomAngleTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref Texture2D RandomAngleTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1032); }
	public @property final auto ref ScriptString ScreenDoorNoiseTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
	public @property final auto ref Texture2D ScreenDoorNoiseTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1016); }
	public @property final auto ref ScriptString SceneCaptureCubeActorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1004); }
	public @property final auto ref Material SceneCaptureCubeActorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref ScriptString SceneCaptureReflectActorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref Material SceneCaptureReflectActorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref ScriptString DefaultUICaretMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref Material DefaultUICaretMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 968); }
	public @property final auto ref ScriptString DefaultUIScenePostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref PostProcessChain DefaultUIScenePostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 952); }
	public @property final auto ref ScriptString ThumbnailMaterialPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref PostProcessChain ThumbnailMaterialPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 936); }
	public @property final auto ref ScriptString ThumbnailParticleSystemPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref PostProcessChain ThumbnailParticleSystemPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 920); }
	public @property final auto ref ScriptString ThumbnailSkeletalMeshPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 908); }
	public @property final auto ref PostProcessChain ThumbnailSkeletalMeshPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref ScriptString DefaultPostProcessName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref PostProcessChain DefaultPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref ScriptString DefaultOnlineSubsystemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref ScriptClass OnlineSubsystemClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 872); }
	public @property final auto ref float TerrainTessellationCheckDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref int TerrainTessellationCheckCount() { return *cast(int*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref int TerrainMaterialMaxTextureCount() { return *cast(int*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref ScriptString TerrainErrorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 848); }
	public @property final auto ref Material TerrainErrorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 844); }
	public @property final auto ref ScriptString ApexDamageParamsName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 832); }
	public @property final auto ref ApexDestructibleDamageParameters ApexDamageParams() { return *cast(ApexDestructibleDamageParameters*)(cast(size_t)cast(void*)this + 828); }
	public @property final auto ref ScriptString DefaultPhysMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
	public @property final auto ref PhysicalMaterial DefaultPhysMaterial() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref ScriptString EditorBrushMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref Material EditorBrushMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 796); }
	public @property final auto ref UObject.LinearColor LightMapDensitySelectedColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 768); }
	public @property final auto ref UObject.LinearColor LightMapDensityVertexMappedColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref float RenderLightMapDensityColorScale() { return *cast(float*)(cast(size_t)cast(void*)this + 748); }
	public @property final auto ref float RenderLightMapDensityGrayscaleScale() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref float MaxLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref float IdealLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref float MinLightMapDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 732); }
	public @property final auto ref float MaxTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 728); }
	public @property final auto ref float IdealTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 724); }
	public @property final auto ref float MinTextureDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref float MaxPixelShaderAdditiveComplexityCount() { return *cast(float*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref UObject.LinearColor LightingOnlyBrightness() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref int ImageReflectionTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref float MaxRMSDForCombiningMappings() { return *cast(float*)(cast(size_t)cast(void*)this + 668); }
	public @property final bool bDisableAILogging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40000000) != 0; }
	public @property final bool bDisableAILogging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40000000; } return val; }
	public @property final bool bCookSeparateSharedMPGameContent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20000000) != 0; }
	public @property final bool bCookSeparateSharedMPGameContent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20000000; } return val; }
	public @property final bool bSuppressMapWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10000000) != 0; }
	public @property final bool bSuppressMapWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10000000; } return val; }
	public @property final bool bEnableOnScreenDebugMessagesDisplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8000000) != 0; }
	public @property final bool bEnableOnScreenDebugMessagesDisplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8000000; } return val; }
	public @property final bool bEnableOnScreenDebugMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4000000) != 0; }
	public @property final bool bEnableOnScreenDebugMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4000000; } return val; }
	public @property final bool bEmulateMobileRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2000000) != 0; }
	public @property final bool bEmulateMobileRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2000000; } return val; }
	public @property final bool bHasPendingGlobalReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1000000) != 0; }
	public @property final bool bHasPendingGlobalReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1000000; } return val; }
	public @property final bool bAreConstraintsDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x800000) != 0; }
	public @property final bool bAreConstraintsDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x800000; } return val; }
	public @property final bool bEnableColorClear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x400000) != 0; }
	public @property final bool bEnableColorClear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x400000; } return val; }
	public @property final bool bCheckParticleRenderSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x200000) != 0; }
	public @property final bool bCheckParticleRenderSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x200000; } return val; }
	public @property final bool bPauseOnLossOfFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x100000) != 0; }
	public @property final bool bPauseOnLossOfFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x100000; } return val; }
	public @property final bool bDisablePhysXHardwareSupport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x80000) != 0; }
	public @property final bool bDisablePhysXHardwareSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x80000; } return val; }
	public @property final bool bRenderTerrainCollisionAsOverlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40000) != 0; }
	public @property final bool bRenderTerrainCollisionAsOverlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40000; } return val; }
	public @property final bool bAllowMatureLanguage() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20000) != 0; }
	public @property final bool bAllowMatureLanguage(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20000; } return val; }
	public @property final bool bEnableKismetLogging() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10000) != 0; }
	public @property final bool bEnableKismetLogging(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10000; } return val; }
	public @property final bool bOnScreenKismetWarnings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8000) != 0; }
	public @property final bool bOnScreenKismetWarnings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8000; } return val; }
	public @property final bool bUsePostProcessEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4000) != 0; }
	public @property final bool bUsePostProcessEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4000; } return val; }
	public @property final bool bForceCPUSkinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2000) != 0; }
	public @property final bool bForceCPUSkinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2000; } return val; }
	public @property final bool bForceStaticTerrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1000) != 0; }
	public @property final bool bForceStaticTerrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1000; } return val; }
	public @property final bool bShouldGenerateSimpleLightmaps() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x800) != 0; }
	public @property final bool bShouldGenerateSimpleLightmaps(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x800; } return val; }
	public @property final bool HACK_EnableDMC() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x400) != 0; }
	public @property final bool HACK_EnableDMC(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x400; } return val; }
	public @property final bool HACK_UseTickFrequency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x200) != 0; }
	public @property final bool HACK_UseTickFrequency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x200; } return val; }
	public @property final bool bSmoothFrameRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x100) != 0; }
	public @property final bool bSmoothFrameRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x100; } return val; }
	public @property final bool bSubtitlesForcedOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x80) != 0; }
	public @property final bool bSubtitlesForcedOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x80; } return val; }
	public @property final bool bSubtitlesEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x40) != 0; }
	public @property final bool bSubtitlesEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x40; } return val; }
	public @property final bool bUseBackgroundLevelStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x20) != 0; }
	public @property final bool bUseBackgroundLevelStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x20; } return val; }
	public @property final bool bUseSound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x10) != 0; }
	public @property final bool bUseSound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x10; } return val; }
	public @property final bool bRenderLightMapDensityGrayscale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x8) != 0; }
	public @property final bool bRenderLightMapDensityGrayscale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x8; } return val; }
	public @property final bool bCombineSimilarMappings() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x4) != 0; }
	public @property final bool bCombineSimilarMappings(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x4; } return val; }
	public @property final bool ForcePowerOfTwoProcBuildingLODTextures() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x2) != 0; }
	public @property final bool ForcePowerOfTwoProcBuildingLODTextures(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x2; } return val; }
	public @property final bool UseProcBuildingLODTextureCropping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 664) & 0x1) != 0; }
	public @property final bool UseProcBuildingLODTextureCropping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 664) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 664) &= ~0x1; } return val; }
	public @property final auto ref int MaxProcBuildingLODLightingTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 660); }
	public @property final auto ref int MaxProcBuildingLODColorTextureSize() { return *cast(int*)(cast(size_t)cast(void*)this + 656); }
	public @property final auto ref float ProcBuildingLODLightingTexelsPerWorldUnit() { return *cast(float*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref float ProcBuildingLODColorTexelsPerWorldUnit() { return *cast(float*)(cast(size_t)cast(void*)this + 648); }
	public @property final auto ref ScriptString BuildingQuadStaticMeshName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref StaticMesh BuildingQuadStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref ScriptString ProcBuildingSimpleMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref Material ProcBuildingSimpleMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 616); }
	public @property final auto ref ScriptString TangentColorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref Material TangentColorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref ScriptString BoneWeightMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref Material BoneWeightMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref ScriptString HeatmapMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref Material HeatmapMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref ScriptString VertexColorViewModeMaterialName_BlueOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref Material VertexColorViewModeMaterial_BlueOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref ScriptString VertexColorViewModeMaterialName_GreenOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref Material VertexColorViewModeMaterial_GreenOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref ScriptString VertexColorViewModeMaterialName_RedOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref Material VertexColorViewModeMaterial_RedOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptString VertexColorViewModeMaterialName_AlphaAsColor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref Material VertexColorViewModeMaterial_AlphaAsColor() { return *cast(Material*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref ScriptString VertexColorViewModeMaterialName_ColorOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref Material VertexColorViewModeMaterial_ColorOnly() { return *cast(Material*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref ScriptString VertexColorMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref Material VertexColorMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref ScriptString RemoveSurfaceMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref Material RemoveSurfaceMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref ScriptString ShadedLevelColorationUnlitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref Material ShadedLevelColorationUnlitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref ScriptString ShadedLevelColorationLitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref Material ShadedLevelColorationLitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref ScriptString LightingTexelDensityName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref Material LightingTexelDensityMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref ScriptString LevelColorationUnlitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref Material LevelColorationUnlitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptString LevelColorationLitMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref Material LevelColorationLitMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref ScriptString CrossMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref Material CrossMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptString TickMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref Material TickMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptString DefaultFogVolumeMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref Material DefaultFogVolumeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref ScriptString GeomMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref Material GeomMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptString EmissiveTexturedMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Material EmissiveTexturedMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptString WireframeMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref Material WireframeMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptString DefaultTextureName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref Texture DefaultTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptString DefaultDecalMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref Material DefaultDecalMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString DefaultMaterialName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref Material DefaultMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptString LocalPlayerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptClass LocalPlayerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptString DataStoreClientClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptClass DataStoreClientClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ScriptString GameViewportClientClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptClass GameViewportClientClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref ScriptString ConsoleClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptClass ConsoleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString SubtitleFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Font SubtitleFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptString LargeFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Font LargeFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString MediumFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref Font MediumFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString SmallFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref Font SmallFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptString TinyFontName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref Font TinyFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 64); }
	final bool IsGame()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7287], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsEditor()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7300], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Font GetSmallFont()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9330], params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	final AudioDevice GetAudioDevice()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9508], params.ptr, cast(void*)0);
		return *cast(AudioDevice*)params.ptr;
	}
	final bool IsSplitScreen()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12288], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Font GetTinyFont()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13765], params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	final Font GetMediumFont()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13867], params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	final Font GetLargeFont()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13869], params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	final WorldInfo GetCurrentWorldInfo()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15534], params.ptr, cast(void*)0);
		return *cast(WorldInfo*)params.ptr;
	}
	final ScriptString GetBuildDate()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15536], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final Font GetSubtitleFont()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15538], params.ptr, cast(void*)0);
		return *cast(Font*)params.ptr;
	}
	final Font GetAdditionalFont(int AdditionalFontIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AdditionalFontIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15540], params.ptr, cast(void*)0);
		return *cast(Font*)&params[4];
	}
	final ScriptString GetLastMovieName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15543], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool PlayLoadMapMovie()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15545], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void StopMovie(bool bDelayStopUntilGameHasRendered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDelayStopUntilGameHasRendered;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15547], params.ptr, cast(void*)0);
	}
	final void RemoveAllOverlays()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15549], cast(void*)0, cast(void*)0);
	}
	final void AddOverlay(Font pFont, ScriptString Text, float X, float Y, float ScaleX, float ScaleY, bool bIsCentered)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15550], params.ptr, cast(void*)0);
	}
	final void AddOverlayWrapped(Font pFont, ScriptString Text, float X, float Y, float ScaleX, float ScaleY, float WrapWidth)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15558], params.ptr, cast(void*)0);
	}
	final Engine GetEngine()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15566], params.ptr, cast(void*)0);
		return *cast(Engine*)params.ptr;
	}
	final PostProcessChain GetWorldPostProcessChain()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15568], params.ptr, cast(void*)0);
		return *cast(PostProcessChain*)params.ptr;
	}
	final void AddTextureStreamingSlaveLoc(Vector InLoc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = InLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15570], params.ptr, cast(void*)0);
	}
	final bool BasicSaveObject(UObject Obj, ScriptString PathName, bool bIsSaveGame, int Version)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = PathName;
		*cast(bool*)&params[16] = bIsSaveGame;
		*cast(int*)&params[20] = Version;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15572], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool BasicLoadObject(UObject Obj, ScriptString PathName, bool bIsSaveGame, int Version)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UObject*)params.ptr = Obj;
		*cast(ScriptString*)&params[4] = PathName;
		*cast(bool*)&params[16] = bIsSaveGame;
		*cast(int*)&params[20] = Version;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15578], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
