module UnrealScript.UnrealEd.BatchExportCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface BatchExportCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.BatchExportCommandlet")); }
	private static __gshared BatchExportCommandlet mDefaultProperties;
	@property final static BatchExportCommandlet DefaultProperties() { mixin(MGDPC("BatchExportCommandlet", "BatchExportCommandlet UnrealEd.Default__BatchExportCommandlet")); }
}
