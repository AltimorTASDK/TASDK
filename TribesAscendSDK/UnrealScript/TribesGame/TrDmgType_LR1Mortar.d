module UnrealScript.TribesGame.TrDmgType_LR1Mortar;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_LR1Mortar : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_LR1Mortar")); }
	private static __gshared TrDmgType_LR1Mortar mDefaultProperties;
	@property final static TrDmgType_LR1Mortar DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_LR1Mortar)("TrDmgType_LR1Mortar TribesGame.Default__TrDmgType_LR1Mortar")); }
}
