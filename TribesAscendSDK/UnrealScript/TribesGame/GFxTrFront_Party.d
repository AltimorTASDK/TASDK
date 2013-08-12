module UnrealScript.TribesGame.GFxTrFront_Party;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GFxTrFront_Party : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrFront_Party")); }
}
