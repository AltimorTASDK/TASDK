module UnrealScript.TribesGame.TrDmgType_Lacerator;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Lacerator : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Lacerator")); }
	private static __gshared TrDmgType_Lacerator mDefaultProperties;
	@property final static TrDmgType_Lacerator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Lacerator)("TrDmgType_Lacerator TribesGame.Default__TrDmgType_Lacerator")); }
}
