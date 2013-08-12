module UnrealScript.UnrealEd.PIEToNormalCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface PIEToNormalCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PIEToNormalCommandlet")); }
	private static __gshared PIEToNormalCommandlet mDefaultProperties;
	@property final static PIEToNormalCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PIEToNormalCommandlet)("PIEToNormalCommandlet UnrealEd.Default__PIEToNormalCommandlet")); }
}
