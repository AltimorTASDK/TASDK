module UnrealScript.UnrealEd.FindTexturesWithMissingPhysicalMaterialsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindTexturesWithMissingPhysicalMaterialsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindTexturesWithMissingPhysicalMaterialsCommandlet")); }
	private static __gshared FindTexturesWithMissingPhysicalMaterialsCommandlet mDefaultProperties;
	@property final static FindTexturesWithMissingPhysicalMaterialsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindTexturesWithMissingPhysicalMaterialsCommandlet)("FindTexturesWithMissingPhysicalMaterialsCommandlet UnrealEd.Default__FindTexturesWithMissingPhysicalMaterialsCommandlet")); }
}
