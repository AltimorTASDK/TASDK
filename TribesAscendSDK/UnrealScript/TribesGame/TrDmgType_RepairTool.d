module UnrealScript.TribesGame.TrDmgType_RepairTool;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_RepairTool : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RepairTool")); }
	private static __gshared TrDmgType_RepairTool mDefaultProperties;
	@property final static TrDmgType_RepairTool DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RepairTool)("TrDmgType_RepairTool TribesGame.Default__TrDmgType_RepairTool")); }
}
