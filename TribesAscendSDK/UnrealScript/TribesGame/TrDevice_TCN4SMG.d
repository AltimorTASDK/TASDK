module UnrealScript.TribesGame.TrDevice_TCN4SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_TCN4SMG : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_TCN4SMG")); }
	private static __gshared TrDevice_TCN4SMG mDefaultProperties;
	@property final static TrDevice_TCN4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_TCN4SMG)("TrDevice_TCN4SMG TribesGame.Default__TrDevice_TCN4SMG")); }
}
