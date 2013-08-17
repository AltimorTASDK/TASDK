module UnrealScript.GameFramework.GameCameraBlockingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.BlockingVolume;

extern(C++) interface GameCameraBlockingVolume : BlockingVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCameraBlockingVolume")); }
	private static __gshared GameCameraBlockingVolume mDefaultProperties;
	@property final static GameCameraBlockingVolume DefaultProperties() { mixin(MGDPC("GameCameraBlockingVolume", "GameCameraBlockingVolume GameFramework.Default__GameCameraBlockingVolume")); }
}
