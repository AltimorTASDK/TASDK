module UnrealScript.UnrealEd.ShowPropertyFlagsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ShowPropertyFlagsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ShowPropertyFlagsCommandlet")); }
	private static __gshared ShowPropertyFlagsCommandlet mDefaultProperties;
	@property final static ShowPropertyFlagsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ShowPropertyFlagsCommandlet)("ShowPropertyFlagsCommandlet UnrealEd.Default__ShowPropertyFlagsCommandlet")); }
}
