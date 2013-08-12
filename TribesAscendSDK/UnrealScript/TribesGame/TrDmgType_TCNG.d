module UnrealScript.TribesGame.TrDmgType_TCNG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TCNG : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TCNG")); }
	private static __gshared TrDmgType_TCNG mDefaultProperties;
	@property final static TrDmgType_TCNG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TCNG)("TrDmgType_TCNG TribesGame.Default__TrDmgType_TCNG")); }
}
