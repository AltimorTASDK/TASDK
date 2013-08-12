module UnrealScript.Core.System;

import ScriptClasses;
import UnrealScript.Core.Subsystem;

extern(C++) interface System : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.System")); }
	@property final auto ref
	{
		int StaleCacheDays() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int MaxStaleCacheSize() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		int MaxOverallCacheSize() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		int PackageSizeSoftLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		float AsyncIOBandwidthLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
		ScriptString SavePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
		ScriptString CachePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString CacheExt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		ScriptString ScreenShotPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptArray!(ScriptString) Paths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 132); }
		ScriptArray!(ScriptString) ScriptPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 156); }
		ScriptArray!(ScriptString) FRScriptPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 168); }
		ScriptArray!(ScriptName) Suppress() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 192); }
		ScriptArray!(ScriptString) Extensions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 204); }
		ScriptString TextureFileCacheExtension() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
		ScriptArray!(ScriptString) LocalizationPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 228); }
		ScriptArray!(ScriptString) CutdownPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 180); }
		ScriptArray!(ScriptString) SeekFreePCExtensions() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 216); }
		ScriptArray!(ScriptString) SeekFreePCPaths() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 144); }
	}
}
