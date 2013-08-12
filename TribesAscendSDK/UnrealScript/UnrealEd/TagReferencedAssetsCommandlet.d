module UnrealScript.UnrealEd.TagReferencedAssetsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface TagReferencedAssetsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TagReferencedAssetsCommandlet")); }
	private static __gshared TagReferencedAssetsCommandlet mDefaultProperties;
	@property final static TagReferencedAssetsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TagReferencedAssetsCommandlet)("TagReferencedAssetsCommandlet UnrealEd.Default__TagReferencedAssetsCommandlet")); }
}
