module UnrealScript.TribesGame.TrCallIn_SupportInventory;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn_Support;

extern(C++) interface TrCallIn_SupportInventory : TrCallIn_Support
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrCallIn_SupportInventory")); }
}
