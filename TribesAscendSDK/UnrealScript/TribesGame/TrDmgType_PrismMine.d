module UnrealScript.TribesGame.TrDmgType_PrismMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_PrismMine : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_PrismMine")); }
	private static __gshared TrDmgType_PrismMine mDefaultProperties;
	@property final static TrDmgType_PrismMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_PrismMine)("TrDmgType_PrismMine TribesGame.Default__TrDmgType_PrismMine")); }
}
