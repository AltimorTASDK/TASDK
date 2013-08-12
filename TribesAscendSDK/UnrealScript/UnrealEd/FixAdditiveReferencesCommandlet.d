module UnrealScript.UnrealEd.FixAdditiveReferencesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixAdditiveReferencesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FixAdditiveReferencesCommandlet")); }
	private static __gshared FixAdditiveReferencesCommandlet mDefaultProperties;
	@property final static FixAdditiveReferencesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FixAdditiveReferencesCommandlet)("FixAdditiveReferencesCommandlet UnrealEd.Default__FixAdditiveReferencesCommandlet")); }
}
