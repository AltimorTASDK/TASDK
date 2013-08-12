module UnrealScript.TribesGame.TrDmgType_Mine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Mine : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Mine")); }
	private static __gshared TrDmgType_Mine mDefaultProperties;
	@property final static TrDmgType_Mine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Mine)("TrDmgType_Mine TribesGame.Default__TrDmgType_Mine")); }
}
