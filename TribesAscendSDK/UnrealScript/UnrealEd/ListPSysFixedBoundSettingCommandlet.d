module UnrealScript.UnrealEd.ListPSysFixedBoundSettingCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListPSysFixedBoundSettingCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.ListPSysFixedBoundSettingCommandlet")); }
	private static __gshared ListPSysFixedBoundSettingCommandlet mDefaultProperties;
	@property final static ListPSysFixedBoundSettingCommandlet DefaultProperties() { mixin(MGDPC("ListPSysFixedBoundSettingCommandlet", "ListPSysFixedBoundSettingCommandlet UnrealEd.Default__ListPSysFixedBoundSettingCommandlet")); }
}
