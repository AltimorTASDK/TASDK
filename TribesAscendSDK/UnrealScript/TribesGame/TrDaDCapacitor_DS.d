module UnrealScript.TribesGame.TrDaDCapacitor_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCapacitor;

extern(C++) interface TrDaDCapacitor_DS : TrDaDCapacitor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCapacitor_DS")); }
}
