module UnrealScript.TribesGame.TrDmgType_RanOver;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_RanOver : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_RanOver")); }
	private static __gshared TrDmgType_RanOver mDefaultProperties;
	@property final static TrDmgType_RanOver DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_RanOver)("TrDmgType_RanOver TribesGame.Default__TrDmgType_RanOver")); }
}
