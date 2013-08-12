module UnrealScript.TribesGame.TrDmgType_APGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_APGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_APGrenade")); }
	private static __gshared TrDmgType_APGrenade mDefaultProperties;
	@property final static TrDmgType_APGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_APGrenade)("TrDmgType_APGrenade TribesGame.Default__TrDmgType_APGrenade")); }
}
