module UnrealScript.TribesGame.TrDmgType_Eagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Eagle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Eagle")); }
	private static __gshared TrDmgType_Eagle mDefaultProperties;
	@property final static TrDmgType_Eagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Eagle)("TrDmgType_Eagle TribesGame.Default__TrDmgType_Eagle")); }
}
