module UnrealScript.TribesGame.TrInventoryStation_Storm;

import ScriptClasses;
import UnrealScript.TribesGame.TrInventoryStation;

extern(C++) interface TrInventoryStation_Storm : TrInventoryStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStation_Storm")); }
}
