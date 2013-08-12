module UnrealScript.TribesGame.TrDmgType_RepairDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_RepairDeployable : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RepairDeployable")); }
	private static __gshared TrDmgType_RepairDeployable mDefaultProperties;
	@property final static TrDmgType_RepairDeployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RepairDeployable)("TrDmgType_RepairDeployable TribesGame.Default__TrDmgType_RepairDeployable")); }
}
