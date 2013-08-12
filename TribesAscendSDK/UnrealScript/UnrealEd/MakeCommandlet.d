module UnrealScript.UnrealEd.MakeCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface MakeCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MakeCommandlet")); }
	private static __gshared MakeCommandlet mDefaultProperties;
	@property final static MakeCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MakeCommandlet)("MakeCommandlet UnrealEd.Default__MakeCommandlet")); }
}
