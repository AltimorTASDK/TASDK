module UnrealScript.UnrealEd.WrangleContentCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface WrangleContentCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.WrangleContentCommandlet")); }
	private static __gshared WrangleContentCommandlet mDefaultProperties;
	@property final static WrangleContentCommandlet DefaultProperties() { mixin(MGDPC("WrangleContentCommandlet", "WrangleContentCommandlet UnrealEd.Default__WrangleContentCommandlet")); }
}
