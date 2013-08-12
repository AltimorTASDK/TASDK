module UnrealScript.UnrealEd.FindRenamedPrefabSequencesCommandlet;

import ScriptClasses;
import UnrealScript.UnrealEd.PerformMapCheckCommandlet;

extern(C++) interface FindRenamedPrefabSequencesCommandlet : PerformMapCheckCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FindRenamedPrefabSequencesCommandlet")); }
	private static __gshared FindRenamedPrefabSequencesCommandlet mDefaultProperties;
	@property final static FindRenamedPrefabSequencesCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FindRenamedPrefabSequencesCommandlet)("FindRenamedPrefabSequencesCommandlet UnrealEd.Default__FindRenamedPrefabSequencesCommandlet")); }
}
