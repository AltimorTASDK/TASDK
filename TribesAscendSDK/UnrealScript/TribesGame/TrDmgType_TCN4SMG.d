module UnrealScript.TribesGame.TrDmgType_TCN4SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_TCN4SMG : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TCN4SMG")); }
	private static __gshared TrDmgType_TCN4SMG mDefaultProperties;
	@property final static TrDmgType_TCN4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TCN4SMG)("TrDmgType_TCN4SMG TribesGame.Default__TrDmgType_TCN4SMG")); }
}
