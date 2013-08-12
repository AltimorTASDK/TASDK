module UnrealScript.TribesGame.TrDmgType_EMPGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_EMPGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_EMPGrenade")); }
	private static __gshared TrDmgType_EMPGrenade mDefaultProperties;
	@property final static TrDmgType_EMPGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_EMPGrenade)("TrDmgType_EMPGrenade TribesGame.Default__TrDmgType_EMPGrenade")); }
}
