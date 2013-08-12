module UnrealScript.TribesGame.TrDevice_RepairToolEG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolEG : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RepairToolEG")); }
	private static __gshared TrDevice_RepairToolEG mDefaultProperties;
	@property final static TrDevice_RepairToolEG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_RepairToolEG)("TrDevice_RepairToolEG TribesGame.Default__TrDevice_RepairToolEG")); }
}
