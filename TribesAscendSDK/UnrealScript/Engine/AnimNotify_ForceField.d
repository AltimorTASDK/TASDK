module UnrealScript.Engine.AnimNotify_ForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_ForceField : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_ForceField")()); }
	private static __gshared AnimNotify_ForceField mDefaultProperties;
	@property final static AnimNotify_ForceField DefaultProperties() { mixin(MGDPC!(AnimNotify_ForceField, "AnimNotify_ForceField Engine.Default__AnimNotify_ForceField")()); }
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ForceFieldComponent'!
			ScriptName SocketName() { mixin(MGPC!("ScriptName", 72)()); }
			ScriptName BoneName() { mixin(MGPC!("ScriptName", 80)()); }
		}
		bool bAttach() { mixin(MGBPC!(68, 0x1)()); }
		bool bAttach(bool val) { mixin(MSBPC!(68, 0x1)()); }
	}
}
