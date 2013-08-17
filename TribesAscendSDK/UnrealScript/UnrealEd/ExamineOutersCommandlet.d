module UnrealScript.UnrealEd.ExamineOutersCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ExamineOutersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ExamineOutersCommandlet")); }
	private static __gshared ExamineOutersCommandlet mDefaultProperties;
	@property final static ExamineOutersCommandlet DefaultProperties() { mixin(MGDPC("ExamineOutersCommandlet", "ExamineOutersCommandlet UnrealEd.Default__ExamineOutersCommandlet")); }
}
