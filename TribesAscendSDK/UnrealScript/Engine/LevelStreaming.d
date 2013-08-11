module UnrealScript.Engine.LevelStreaming;

import ScriptClasses;
import UnrealScript.Engine.LevelStreamingVolume;
import UnrealScript.Engine.LevelGridVolume;
import UnrealScript.Engine.Level;
import UnrealScript.Core.UObject;

extern(C++) interface LevelStreaming : UObject
{
	public @property final auto ref ScriptName PackageName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	public @property final bool bHasLoadRequestPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
	public @property final bool bHasLoadRequestPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
	public @property final bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x80) != 0; }
	public @property final bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x80; } return val; }
	public @property final bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x100) != 0; }
	public @property final bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x100; } return val; }
	public @property final bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x200) != 0; }
	public @property final bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x200; } return val; }
	public @property final auto ref ScriptArray!(LevelStreamingVolume) EditorStreamingVolumes() { return *cast(ScriptArray!(LevelStreamingVolume)*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptArray!(ScriptString) Keywords() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int GridPosition() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref LevelGridVolume EditorGridVolume() { return *cast(LevelGridVolume*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float LastVolumeUnloadRequestTime() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float MinTimeBetweenVolumeUnloadRequests() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.Color DrawColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bIsRequestingUnloadAndRemoval() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x800) != 0; }
	public @property final bool bIsRequestingUnloadAndRemoval(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x800; } return val; }
	public @property final bool bDrawOnLevelStatusMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x400) != 0; }
	public @property final bool bDrawOnLevelStatusMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x400; } return val; }
	public @property final bool bIsFullyStatic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x40) != 0; }
	public @property final bool bIsFullyStatic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x40; } return val; }
	public @property final bool bLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x20) != 0; }
	public @property final bool bLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x20; } return val; }
	public @property final bool bBoundingBoxVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
	public @property final bool bBoundingBoxVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
	public @property final bool bShouldBeVisibleInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
	public @property final bool bShouldBeVisibleInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
	public @property final bool bHasUnloadRequestPending() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
	public @property final bool bHasUnloadRequestPending(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
	public @property final bool bIsVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
	public @property final bool bIsVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	public @property final auto ref Vector OldOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref Vector Offset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref Level LoadedLevel() { return *cast(Level*)(cast(size_t)cast(void*)this + 68); }
}
