module UnrealScript.UnrealEd.FixupSourceUVsCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface FixupSourceUVsCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FixupSourceUVsCommandlet")); }
	private static __gshared FixupSourceUVsCommandlet mDefaultProperties;
	@property final static FixupSourceUVsCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FixupSourceUVsCommandlet)("FixupSourceUVsCommandlet UnrealEd.Default__FixupSourceUVsCommandlet")); }
}
