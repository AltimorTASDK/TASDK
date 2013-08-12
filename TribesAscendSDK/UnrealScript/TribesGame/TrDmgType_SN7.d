module UnrealScript.TribesGame.TrDmgType_SN7;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_SN7 : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SN7")); }
	private static __gshared TrDmgType_SN7 mDefaultProperties;
	@property final static TrDmgType_SN7 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SN7)("TrDmgType_SN7 TribesGame.Default__TrDmgType_SN7")); }
}
