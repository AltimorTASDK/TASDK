module UnrealScript.Engine.NxRadialCustomForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxRadialForceField;
import UnrealScript.Core.UObject;

extern(C++) interface NxRadialCustomForceField : NxRadialForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxRadialCustomForceField")()); }
	private static __gshared NxRadialCustomForceField mDefaultProperties;
	@property final static NxRadialCustomForceField DefaultProperties() { mixin(MGDPC!(NxRadialCustomForceField, "NxRadialCustomForceField Engine.Default__NxRadialCustomForceField")()); }
	@property final auto ref
	{
		UObject.Pointer Kernel() { mixin(MGPC!("UObject.Pointer", 564)()); }
		float SelfRotationStrength() { mixin(MGPC!("float", 560)()); }
	}
}
