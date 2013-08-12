module UnrealScript.UTGame.UTAnimNodeFramePlayer;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeFramePlayer;

extern(C++) interface UTAnimNodeFramePlayer : UDKAnimNodeFramePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeFramePlayer")); }
	private static __gshared UTAnimNodeFramePlayer mDefaultProperties;
	@property final static UTAnimNodeFramePlayer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimNodeFramePlayer)("UTAnimNodeFramePlayer UTGame.Default__UTAnimNodeFramePlayer")); }
}
