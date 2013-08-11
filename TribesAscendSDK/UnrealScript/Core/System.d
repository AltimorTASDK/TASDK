module UnrealScript.Core.System;

import ScriptClasses;
import UnrealScript.Core.Subsystem;

extern(C++) interface System : Subsystem
{
	public @property final auto ref int StaleCacheDays() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int MaxStaleCacheSize() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int MaxOverallCacheSize() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int PackageSizeSoftLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float AsyncIOBandwidthLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptString SavePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString CachePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString CacheExt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptString ScreenShotPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(ScriptString) Paths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(ScriptString) ScriptPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptArray!(ScriptString) FRScriptPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptArray!(ScriptName) Suppress() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptArray!(ScriptString) Extensions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptString TextureFileCacheExtension() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptArray!(ScriptString) LocalizationPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptArray!(ScriptString) CutdownPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptArray!(ScriptString) SeekFreePCExtensions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(ScriptString) SeekFreePCPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 144); }
}
