module UnrealScript.UTGame.UTAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

extern(C++) interface UTAnimNodeSequenceByBoneRotation : UDKAnimNodeSequenceByBoneRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAnimNodeSequenceByBoneRotation")()); }
	private static __gshared UTAnimNodeSequenceByBoneRotation mDefaultProperties;
	@property final static UTAnimNodeSequenceByBoneRotation DefaultProperties() { mixin(MGDPC!(UTAnimNodeSequenceByBoneRotation, "UTAnimNodeSequenceByBoneRotation UTGame.Default__UTAnimNodeSequenceByBoneRotation")()); }
}
