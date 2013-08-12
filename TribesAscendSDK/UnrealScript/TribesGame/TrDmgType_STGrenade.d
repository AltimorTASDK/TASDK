module UnrealScript.TribesGame.TrDmgType_STGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_STGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_STGrenade")); }
	private static __gshared TrDmgType_STGrenade mDefaultProperties;
	@property final static TrDmgType_STGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_STGrenade)("TrDmgType_STGrenade TribesGame.Default__TrDmgType_STGrenade")); }
}
