module UnrealScript.TribesGame.TrDmgType_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_StealthSpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_StealthSpinfusor")); }
	private static __gshared TrDmgType_StealthSpinfusor mDefaultProperties;
	@property final static TrDmgType_StealthSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_StealthSpinfusor)("TrDmgType_StealthSpinfusor TribesGame.Default__TrDmgType_StealthSpinfusor")); }
}
