module UnrealScript.TribesGame.TrDmgType_Thumper;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Thumper : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Thumper")); }
	private static __gshared TrDmgType_Thumper mDefaultProperties;
	@property final static TrDmgType_Thumper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Thumper)("TrDmgType_Thumper TribesGame.Default__TrDmgType_Thumper")); }
}
