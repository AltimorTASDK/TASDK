module UnrealScript.TribesGame.TrDevice_RepairToolAX;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolAX : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RepairToolAX")); }
	private static __gshared TrDevice_RepairToolAX mDefaultProperties;
	@property final static TrDevice_RepairToolAX DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_RepairToolAX)("TrDevice_RepairToolAX TribesGame.Default__TrDevice_RepairToolAX")); }
}
