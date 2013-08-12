module UnrealScript.Engine.ServerCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface ServerCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ServerCommandlet")); }
}
