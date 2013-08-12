module UnrealScript.TribesGame.TrDevice_RepairToolSD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolSD : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RepairToolSD")); }
	private static __gshared TrDevice_RepairToolSD mDefaultProperties;
	@property final static TrDevice_RepairToolSD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_RepairToolSD)("TrDevice_RepairToolSD TribesGame.Default__TrDevice_RepairToolSD")); }
}
