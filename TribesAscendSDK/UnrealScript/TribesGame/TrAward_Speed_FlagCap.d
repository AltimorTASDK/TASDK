module UnrealScript.TribesGame.TrAward_Speed_FlagCap;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_FlagCap : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Speed_FlagCap")); }
	private static __gshared TrAward_Speed_FlagCap mDefaultProperties;
	@property final static TrAward_Speed_FlagCap DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Speed_FlagCap)("TrAward_Speed_FlagCap TribesGame.Default__TrAward_Speed_FlagCap")); }
}
