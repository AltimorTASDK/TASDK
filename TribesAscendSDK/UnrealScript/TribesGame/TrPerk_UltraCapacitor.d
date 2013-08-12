module UnrealScript.TribesGame.TrPerk_UltraCapacitor;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_UltraCapacitor : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_UltraCapacitor")); }
}
