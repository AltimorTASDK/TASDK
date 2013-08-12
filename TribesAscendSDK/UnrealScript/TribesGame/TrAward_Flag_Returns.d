module UnrealScript.TribesGame.TrAward_Flag_Returns;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Flag_Returns : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Flag_Returns")); }
	private static __gshared TrAward_Flag_Returns mDefaultProperties;
	@property final static TrAward_Flag_Returns DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Flag_Returns)("TrAward_Flag_Returns TribesGame.Default__TrAward_Flag_Returns")); }
}
