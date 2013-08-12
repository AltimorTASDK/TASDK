module UnrealScript.UnrealEd.UT3MapStatsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface UT3MapStatsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UT3MapStatsCommandlet")); }
	private static __gshared UT3MapStatsCommandlet mDefaultProperties;
	@property final static UT3MapStatsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UT3MapStatsCommandlet)("UT3MapStatsCommandlet UnrealEd.Default__UT3MapStatsCommandlet")); }
}
