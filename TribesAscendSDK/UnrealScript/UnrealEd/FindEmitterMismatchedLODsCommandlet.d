module UnrealScript.UnrealEd.FindEmitterMismatchedLODsCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface FindEmitterMismatchedLODsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FindEmitterMismatchedLODsCommandlet")); }
	private static __gshared FindEmitterMismatchedLODsCommandlet mDefaultProperties;
	@property final static FindEmitterMismatchedLODsCommandlet DefaultProperties() { mixin(MGDPC("FindEmitterMismatchedLODsCommandlet", "FindEmitterMismatchedLODsCommandlet UnrealEd.Default__FindEmitterMismatchedLODsCommandlet")); }
}
