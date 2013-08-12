module UnrealScript.UTGame.UTAnimBlendByPosture;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByPosture;

extern(C++) interface UTAnimBlendByPosture : UDKAnimBlendByPosture
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByPosture")); }
	private static __gshared UTAnimBlendByPosture mDefaultProperties;
	@property final static UTAnimBlendByPosture DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByPosture)("UTAnimBlendByPosture UTGame.Default__UTAnimBlendByPosture")); }
}
