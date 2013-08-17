module UnrealScript.UnrealEd.FindRenamedPrefabSequencesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.PerformMapCheckCommandlet;

extern(C++) interface FindRenamedPrefabSequencesCommandlet : PerformMapCheckCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FindRenamedPrefabSequencesCommandlet")); }
	private static __gshared FindRenamedPrefabSequencesCommandlet mDefaultProperties;
	@property final static FindRenamedPrefabSequencesCommandlet DefaultProperties() { mixin(MGDPC("FindRenamedPrefabSequencesCommandlet", "FindRenamedPrefabSequencesCommandlet UnrealEd.Default__FindRenamedPrefabSequencesCommandlet")); }
}
