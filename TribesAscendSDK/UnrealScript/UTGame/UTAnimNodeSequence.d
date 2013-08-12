module UnrealScript.UTGame.UTAnimNodeSequence;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeSequence;

extern(C++) interface UTAnimNodeSequence : UDKAnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeSequence")); }
	private static __gshared UTAnimNodeSequence mDefaultProperties;
	@property final static UTAnimNodeSequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimNodeSequence)("UTAnimNodeSequence UTGame.Default__UTAnimNodeSequence")); }
}
