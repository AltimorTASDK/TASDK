module UnrealScript.UTGame.UTAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

extern(C++) interface UTAnimNodeSequenceByBoneRotation : UDKAnimNodeSequenceByBoneRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimNodeSequenceByBoneRotation")); }
	private static __gshared UTAnimNodeSequenceByBoneRotation mDefaultProperties;
	@property final static UTAnimNodeSequenceByBoneRotation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimNodeSequenceByBoneRotation)("UTAnimNodeSequenceByBoneRotation UTGame.Default__UTAnimNodeSequenceByBoneRotation")); }
}
