module UnrealScript.TribesGame.TrDmgType_TCN4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_TCN4SMG_MKD : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TCN4SMG_MKD")); }
	private static __gshared TrDmgType_TCN4SMG_MKD mDefaultProperties;
	@property final static TrDmgType_TCN4SMG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TCN4SMG_MKD)("TrDmgType_TCN4SMG_MKD TribesGame.Default__TrDmgType_TCN4SMG_MKD")); }
}
