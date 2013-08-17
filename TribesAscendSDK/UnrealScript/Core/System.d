module UnrealScript.Core.System;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Subsystem;

extern(C++) interface System : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.System")()); }
	private static __gshared System mDefaultProperties;
	@property final static System DefaultProperties() { mixin(MGDPC!(System, "System Core.Default__System")()); }
	@property final auto ref
	{
		int StaleCacheDays() { mixin(MGPC!(int, 64)()); }
		int MaxStaleCacheSize() { mixin(MGPC!(int, 68)()); }
		int MaxOverallCacheSize() { mixin(MGPC!(int, 72)()); }
		int PackageSizeSoftLimit() { mixin(MGPC!(int, 76)()); }
		float AsyncIOBandwidthLimit() { mixin(MGPC!(float, 80)()); }
		ScriptString SavePath() { mixin(MGPC!(ScriptString, 84)()); }
		ScriptString CachePath() { mixin(MGPC!(ScriptString, 96)()); }
		ScriptString CacheExt() { mixin(MGPC!(ScriptString, 108)()); }
		ScriptString ScreenShotPath() { mixin(MGPC!(ScriptString, 120)()); }
		ScriptArray!(ScriptString) Paths() { mixin(MGPC!(ScriptArray!(ScriptString), 132)()); }
		ScriptArray!(ScriptString) ScriptPaths() { mixin(MGPC!(ScriptArray!(ScriptString), 156)()); }
		ScriptArray!(ScriptString) FRScriptPaths() { mixin(MGPC!(ScriptArray!(ScriptString), 168)()); }
		ScriptArray!(ScriptName) Suppress() { mixin(MGPC!(ScriptArray!(ScriptName), 192)()); }
		ScriptArray!(ScriptString) Extensions() { mixin(MGPC!(ScriptArray!(ScriptString), 204)()); }
		ScriptString TextureFileCacheExtension() { mixin(MGPC!(ScriptString, 240)()); }
		ScriptArray!(ScriptString) LocalizationPaths() { mixin(MGPC!(ScriptArray!(ScriptString), 228)()); }
		ScriptArray!(ScriptString) CutdownPaths() { mixin(MGPC!(ScriptArray!(ScriptString), 180)()); }
		ScriptArray!(ScriptString) SeekFreePCExtensions() { mixin(MGPC!(ScriptArray!(ScriptString), 216)()); }
		ScriptArray!(ScriptString) SeekFreePCPaths() { mixin(MGPC!(ScriptArray!(ScriptString), 144)()); }
	}
}
