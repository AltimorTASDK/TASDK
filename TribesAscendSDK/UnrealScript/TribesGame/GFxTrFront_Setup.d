module UnrealScript.TribesGame.GFxTrFront_Setup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_Setup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_Setup")); }
}
