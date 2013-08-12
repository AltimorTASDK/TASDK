module UnrealScript.TribesGame.TrDmgType_Melee;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Melee : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Melee")); }
	private static __gshared TrDmgType_Melee mDefaultProperties;
	@property final static TrDmgType_Melee DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Melee)("TrDmgType_Melee TribesGame.Default__TrDmgType_Melee")); }
}
