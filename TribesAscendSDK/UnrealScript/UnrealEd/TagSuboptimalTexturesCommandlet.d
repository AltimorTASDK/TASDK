module UnrealScript.UnrealEd.TagSuboptimalTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface TagSuboptimalTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TagSuboptimalTexturesCommandlet")); }
	private static __gshared TagSuboptimalTexturesCommandlet mDefaultProperties;
	@property final static TagSuboptimalTexturesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TagSuboptimalTexturesCommandlet)("TagSuboptimalTexturesCommandlet UnrealEd.Default__TagSuboptimalTexturesCommandlet")); }
}
