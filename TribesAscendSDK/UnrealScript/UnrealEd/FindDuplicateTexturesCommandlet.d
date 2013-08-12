module UnrealScript.UnrealEd.FindDuplicateTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindDuplicateTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindDuplicateTexturesCommandlet")); }
	private static __gshared FindDuplicateTexturesCommandlet mDefaultProperties;
	@property final static FindDuplicateTexturesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindDuplicateTexturesCommandlet)("FindDuplicateTexturesCommandlet UnrealEd.Default__FindDuplicateTexturesCommandlet")); }
}
