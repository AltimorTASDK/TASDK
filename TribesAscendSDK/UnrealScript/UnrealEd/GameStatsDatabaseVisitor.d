module UnrealScript.UnrealEd.GameStatsDatabaseVisitor;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface GameStatsDatabaseVisitor : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsDatabaseVisitor")); }
}
