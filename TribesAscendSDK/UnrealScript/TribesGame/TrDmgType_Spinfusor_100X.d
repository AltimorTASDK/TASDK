module UnrealScript.TribesGame.TrDmgType_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_Spinfusor_100X : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Spinfusor_100X")); }
	private static __gshared TrDmgType_Spinfusor_100X mDefaultProperties;
	@property final static TrDmgType_Spinfusor_100X DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Spinfusor_100X)("TrDmgType_Spinfusor_100X TribesGame.Default__TrDmgType_Spinfusor_100X")); }
}
