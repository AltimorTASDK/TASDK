module UnrealScript.TribesGame.TrDmgType_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_HeavyTwinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HeavyTwinfusor")); }
	private static __gshared TrDmgType_HeavyTwinfusor mDefaultProperties;
	@property final static TrDmgType_HeavyTwinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HeavyTwinfusor)("TrDmgType_HeavyTwinfusor TribesGame.Default__TrDmgType_HeavyTwinfusor")); }
}
