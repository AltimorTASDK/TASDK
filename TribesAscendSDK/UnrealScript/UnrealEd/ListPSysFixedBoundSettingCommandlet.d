module UnrealScript.UnrealEd.ListPSysFixedBoundSettingCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ListPSysFixedBoundSettingCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ListPSysFixedBoundSettingCommandlet")); }
	private static __gshared ListPSysFixedBoundSettingCommandlet mDefaultProperties;
	@property final static ListPSysFixedBoundSettingCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ListPSysFixedBoundSettingCommandlet)("ListPSysFixedBoundSettingCommandlet UnrealEd.Default__ListPSysFixedBoundSettingCommandlet")); }
}
