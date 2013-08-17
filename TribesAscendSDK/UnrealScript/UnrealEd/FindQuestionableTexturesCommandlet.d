module UnrealScript.UnrealEd.FindQuestionableTexturesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindQuestionableTexturesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FindQuestionableTexturesCommandlet")); }
	private static __gshared FindQuestionableTexturesCommandlet mDefaultProperties;
	@property final static FindQuestionableTexturesCommandlet DefaultProperties() { mixin(MGDPC("FindQuestionableTexturesCommandlet", "FindQuestionableTexturesCommandlet UnrealEd.Default__FindQuestionableTexturesCommandlet")); }
}
