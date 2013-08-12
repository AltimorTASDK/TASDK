module UnrealScript.UnrealEd.ExamineOutersCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ExamineOutersCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ExamineOutersCommandlet")); }
	private static __gshared ExamineOutersCommandlet mDefaultProperties;
	@property final static ExamineOutersCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ExamineOutersCommandlet)("ExamineOutersCommandlet UnrealEd.Default__ExamineOutersCommandlet")); }
}
