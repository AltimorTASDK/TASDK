module UnrealScript.Engine.LevelStreaming;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreamingVolume;
import UnrealScript.Engine.LevelGridVolume;
import UnrealScript.Engine.Level;
import UnrealScript.Core.UObject;

extern(C++) interface LevelStreaming : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LevelStreaming")); }
	private static __gshared LevelStreaming mDefaultProperties;
	@property final static LevelStreaming DefaultProperties() { mixin(MGDPC("LevelStreaming", "LevelStreaming Engine.Default__LevelStreaming")); }
	@property final
	{
		auto ref
		{
			ScriptName PackageName() { mixin(MGPC("ScriptName", 60)); }
			ScriptArray!(LevelStreamingVolume) EditorStreamingVolumes() { mixin(MGPC("ScriptArray!(LevelStreamingVolume)", 104)); }
			ScriptArray!(ScriptString) Keywords() { mixin(MGPC("ScriptArray!(ScriptString)", 124)); }
			int GridPosition() { mixin(MGPC("int", 140)); }
			LevelGridVolume EditorGridVolume() { mixin(MGPC("LevelGridVolume", 136)); }
			float LastVolumeUnloadRequestTime() { mixin(MGPC("float", 120)); }
			float MinTimeBetweenVolumeUnloadRequests() { mixin(MGPC("float", 116)); }
			UObject.Color DrawColor() { mixin(MGPC("UObject.Color", 100)); }
			Vector OldOffset() { mixin(MGPC("Vector", 84)); }
			Vector Offset() { mixin(MGPC("Vector", 72)); }
			Level LoadedLevel() { mixin(MGPC("Level", 68)); }
		}
		bool bHasLoadRequestPending() { mixin(MGBPC(96, 0x2)); }
		bool bHasLoadRequestPending(bool val) { mixin(MSBPC(96, 0x2)); }
		bool bShouldBeLoaded() { mixin(MGBPC(96, 0x80)); }
		bool bShouldBeLoaded(bool val) { mixin(MSBPC(96, 0x80)); }
		bool bShouldBeVisible() { mixin(MGBPC(96, 0x100)); }
		bool bShouldBeVisible(bool val) { mixin(MSBPC(96, 0x100)); }
		bool bShouldBlockOnLoad() { mixin(MGBPC(96, 0x200)); }
		bool bShouldBlockOnLoad(bool val) { mixin(MSBPC(96, 0x200)); }
		bool bIsRequestingUnloadAndRemoval() { mixin(MGBPC(96, 0x800)); }
		bool bIsRequestingUnloadAndRemoval(bool val) { mixin(MSBPC(96, 0x800)); }
		bool bDrawOnLevelStatusMap() { mixin(MGBPC(96, 0x400)); }
		bool bDrawOnLevelStatusMap(bool val) { mixin(MSBPC(96, 0x400)); }
		bool bIsFullyStatic() { mixin(MGBPC(96, 0x40)); }
		bool bIsFullyStatic(bool val) { mixin(MSBPC(96, 0x40)); }
		bool bLocked() { mixin(MGBPC(96, 0x20)); }
		bool bLocked(bool val) { mixin(MSBPC(96, 0x20)); }
		bool bBoundingBoxVisible() { mixin(MGBPC(96, 0x10)); }
		bool bBoundingBoxVisible(bool val) { mixin(MSBPC(96, 0x10)); }
		bool bShouldBeVisibleInEditor() { mixin(MGBPC(96, 0x8)); }
		bool bShouldBeVisibleInEditor(bool val) { mixin(MSBPC(96, 0x8)); }
		bool bHasUnloadRequestPending() { mixin(MGBPC(96, 0x4)); }
		bool bHasUnloadRequestPending(bool val) { mixin(MSBPC(96, 0x4)); }
		bool bIsVisible() { mixin(MGBPC(96, 0x1)); }
		bool bIsVisible(bool val) { mixin(MSBPC(96, 0x1)); }
	}
}
