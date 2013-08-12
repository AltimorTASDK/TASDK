module UnrealScript.TribesGame.TrDmgType_TC24;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TC24 : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TC24")); }
	private static __gshared TrDmgType_TC24 mDefaultProperties;
	@property final static TrDmgType_TC24 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TC24)("TrDmgType_TC24 TribesGame.Default__TrDmgType_TC24")); }
}
