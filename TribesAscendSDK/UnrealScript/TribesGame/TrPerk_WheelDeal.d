module UnrealScript.TribesGame.TrPerk_WheelDeal;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_WheelDeal : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_WheelDeal")); }
}
