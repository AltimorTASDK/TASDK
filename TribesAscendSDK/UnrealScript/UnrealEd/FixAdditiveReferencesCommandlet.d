module UnrealScript.UnrealEd.FixAdditiveReferencesCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixAdditiveReferencesCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FixAdditiveReferencesCommandlet")); }
	private static __gshared FixAdditiveReferencesCommandlet mDefaultProperties;
	@property final static FixAdditiveReferencesCommandlet DefaultProperties() { mixin(MGDPC("FixAdditiveReferencesCommandlet", "FixAdditiveReferencesCommandlet UnrealEd.Default__FixAdditiveReferencesCommandlet")); }
}
