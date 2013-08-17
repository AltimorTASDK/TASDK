module UnrealScript.GameFramework.GameThirdPersonCameraMode_Default;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameThirdPersonCameraMode;

extern(C++) interface GameThirdPersonCameraMode_Default : GameThirdPersonCameraMode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameThirdPersonCameraMode_Default")); }
	private static __gshared GameThirdPersonCameraMode_Default mDefaultProperties;
	@property final static GameThirdPersonCameraMode_Default DefaultProperties() { mixin(MGDPC("GameThirdPersonCameraMode_Default", "GameThirdPersonCameraMode_Default GameFramework.Default__GameThirdPersonCameraMode_Default")); }
	@property final
	{
		auto ref
		{
			float TemporaryOriginRotInterpSpeed() { mixin(MGPC("float", 568)); }
			float WorstLocAimingZOffset() { mixin(MGPC("float", 560)); }
		}
		bool bTemporaryOriginRotInterp() { mixin(MGBPC(564, 0x1)); }
		bool bTemporaryOriginRotInterp(bool val) { mixin(MSBPC(564, 0x1)); }
	}
}
