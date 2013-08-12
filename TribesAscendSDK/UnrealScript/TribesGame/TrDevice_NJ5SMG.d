module UnrealScript.TribesGame.TrDevice_NJ5SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_NJ5SMG : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_NJ5SMG")); }
	private static __gshared TrDevice_NJ5SMG mDefaultProperties;
	@property final static TrDevice_NJ5SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_NJ5SMG)("TrDevice_NJ5SMG TribesGame.Default__TrDevice_NJ5SMG")); }
}
