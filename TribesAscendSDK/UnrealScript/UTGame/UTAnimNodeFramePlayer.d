module UnrealScript.UTGame.UTAnimNodeFramePlayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeFramePlayer;

extern(C++) interface UTAnimNodeFramePlayer : UDKAnimNodeFramePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimNodeFramePlayer")); }
	private static __gshared UTAnimNodeFramePlayer mDefaultProperties;
	@property final static UTAnimNodeFramePlayer DefaultProperties() { mixin(MGDPC("UTAnimNodeFramePlayer", "UTAnimNodeFramePlayer UTGame.Default__UTAnimNodeFramePlayer")); }
}
