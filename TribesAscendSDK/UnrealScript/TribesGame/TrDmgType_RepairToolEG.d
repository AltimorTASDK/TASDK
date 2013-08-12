module UnrealScript.TribesGame.TrDmgType_RepairToolEG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolEG : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RepairToolEG")); }
}
