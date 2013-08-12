module UnrealScript.Engine.LevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreamingVolume;
import UnrealScript.Engine.LevelGridVolume;
import UnrealScript.Engine.Level;
import UnrealScript.Core.UObject;

extern(C++) interface LevelStreaming : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelStreaming")); }
	private static __gshared LevelStreaming mDefaultProperties;
	@property final static LevelStreaming DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelStreaming)("LevelStreaming Engine.Default__LevelStreaming")); }
	@property final
	{
		auto ref
		{
			ScriptName PackageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(LevelStreamingVolume) EditorStreamingVolumes() { return *cast(ScriptArray!(LevelStreamingVolume)*)(cast(size_t)cast(void*)this + 104); }
			ScriptArray!(ScriptString) Keywords() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 124); }
			int GridPosition() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			LevelGridVolume EditorGridVolume() { return *cast(LevelGridVolume*)(cast(size_t)cast(void*)this + 136); }
			float LastVolumeUnloadRequestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float MinTimeBetweenVolumeUnloadRequests() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			UObject.Color DrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 100); }
			Vector OldOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
			Vector Offset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
			Level LoadedLevel() { return *cast(Level*)(cast(size_t)cast(void*)this + 68); }
		}
		bool bHasLoadRequestPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bHasLoadRequestPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x80) != 0; }
		bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x80; } return val; }
		bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x100) != 0; }
		bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x100; } return val; }
		bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x200) != 0; }
		bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x200; } return val; }
		bool bIsRequestingUnloadAndRemoval() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x800) != 0; }
		bool bIsRequestingUnloadAndRemoval(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x800; } return val; }
		bool bDrawOnLevelStatusMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x400) != 0; }
		bool bDrawOnLevelStatusMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x400; } return val; }
		bool bIsFullyStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x40) != 0; }
		bool bIsFullyStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x40; } return val; }
		bool bLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x20) != 0; }
		bool bLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x20; } return val; }
		bool bBoundingBoxVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
		bool bBoundingBoxVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
		bool bShouldBeVisibleInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
		bool bShouldBeVisibleInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
		bool bHasUnloadRequestPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bHasUnloadRequestPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
}
