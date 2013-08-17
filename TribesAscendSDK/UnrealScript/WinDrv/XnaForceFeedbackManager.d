module UnrealScript.WinDrv.XnaForceFeedbackManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForceFeedbackManager;

extern(C++) interface XnaForceFeedbackManager : ForceFeedbackManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class WinDrv.XnaForceFeedbackManager")); }
	private static __gshared XnaForceFeedbackManager mDefaultProperties;
	@property final static XnaForceFeedbackManager DefaultProperties() { mixin(MGDPC("XnaForceFeedbackManager", "XnaForceFeedbackManager WinDrv.Default__XnaForceFeedbackManager")); }
}
