module UnrealScript.UnrealEd.TestCompressionCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface TestCompressionCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TestCompressionCommandlet")); }
}
