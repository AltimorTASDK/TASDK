module UnrealScript.TribesGame.TrDaDCapacitor_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCapacitor;

extern(C++) interface TrDaDCapacitor_BE : TrDaDCapacitor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCapacitor_BE")); }
}
