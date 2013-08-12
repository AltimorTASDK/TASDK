module UnrealScript.UnrealEd.FindQuestionableTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindQuestionableTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindQuestionableTexturesCommandlet")); }
	private static __gshared FindQuestionableTexturesCommandlet mDefaultProperties;
	@property final static FindQuestionableTexturesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindQuestionableTexturesCommandlet)("FindQuestionableTexturesCommandlet UnrealEd.Default__FindQuestionableTexturesCommandlet")); }
}
