module UnrealScript.TribesGame.TrStormCore_BloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrStormCore;

extern(C++) interface TrStormCore_BloodEagle : TrStormCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStormCore_BloodEagle")); }
	private static __gshared TrStormCore_BloodEagle mDefaultProperties;
	@property final static TrStormCore_BloodEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrStormCore_BloodEagle)("TrStormCore_BloodEagle TribesGame.Default__TrStormCore_BloodEagle")); }
}
