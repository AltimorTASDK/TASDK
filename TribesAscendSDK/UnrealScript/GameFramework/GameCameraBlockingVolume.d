module UnrealScript.GameFramework.GameCameraBlockingVolume;

import ScriptClasses;
import UnrealScript.Engine.BlockingVolume;

extern(C++) interface GameCameraBlockingVolume : BlockingVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCameraBlockingVolume")); }
	private static __gshared GameCameraBlockingVolume mDefaultProperties;
	@property final static GameCameraBlockingVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCameraBlockingVolume)("GameCameraBlockingVolume GameFramework.Default__GameCameraBlockingVolume")); }
}
