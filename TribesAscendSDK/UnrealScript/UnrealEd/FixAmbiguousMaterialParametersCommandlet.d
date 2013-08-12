module UnrealScript.UnrealEd.FixAmbiguousMaterialParametersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixAmbiguousMaterialParametersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FixAmbiguousMaterialParametersCommandlet")); }
	private static __gshared FixAmbiguousMaterialParametersCommandlet mDefaultProperties;
	@property final static FixAmbiguousMaterialParametersCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FixAmbiguousMaterialParametersCommandlet)("FixAmbiguousMaterialParametersCommandlet UnrealEd.Default__FixAmbiguousMaterialParametersCommandlet")); }
}
