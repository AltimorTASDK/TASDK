module UnrealScript.TribesGame.TrDmgType_DiskToss;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_DiskToss : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_DiskToss")); }
	private static __gshared TrDmgType_DiskToss mDefaultProperties;
	@property final static TrDmgType_DiskToss DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_DiskToss)("TrDmgType_DiskToss TribesGame.Default__TrDmgType_DiskToss")); }
}
