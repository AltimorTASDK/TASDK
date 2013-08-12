module UnrealScript.TribesGame.TrDevice_RepairToolSD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolSD : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RepairToolSD")); }
}
