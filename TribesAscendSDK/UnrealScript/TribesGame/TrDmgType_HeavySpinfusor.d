module UnrealScript.TribesGame.TrDmgType_HeavySpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_HeavySpinfusor : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HeavySpinfusor")); }
	private static __gshared TrDmgType_HeavySpinfusor mDefaultProperties;
	@property final static TrDmgType_HeavySpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HeavySpinfusor)("TrDmgType_HeavySpinfusor TribesGame.Default__TrDmgType_HeavySpinfusor")); }
}
