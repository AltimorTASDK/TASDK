module UnrealScript.TribesGame.TrDmgType_S22Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_S22Rifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_S22Rifle")); }
	private static __gshared TrDmgType_S22Rifle mDefaultProperties;
	@property final static TrDmgType_S22Rifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_S22Rifle)("TrDmgType_S22Rifle TribesGame.Default__TrDmgType_S22Rifle")); }
}
