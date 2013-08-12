module UnrealScript.UnrealEd.FindUniqueSpecularTextureMaterialsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindUniqueSpecularTextureMaterialsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindUniqueSpecularTextureMaterialsCommandlet")); }
	private static __gshared FindUniqueSpecularTextureMaterialsCommandlet mDefaultProperties;
	@property final static FindUniqueSpecularTextureMaterialsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindUniqueSpecularTextureMaterialsCommandlet)("FindUniqueSpecularTextureMaterialsCommandlet UnrealEd.Default__FindUniqueSpecularTextureMaterialsCommandlet")); }
}
