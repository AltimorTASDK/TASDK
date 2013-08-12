module UnrealScript.WinDrv.XnaForceFeedbackManager;

import ScriptClasses;
import UnrealScript.Engine.ForceFeedbackManager;

extern(C++) interface XnaForceFeedbackManager : ForceFeedbackManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class WinDrv.XnaForceFeedbackManager")); }
}
