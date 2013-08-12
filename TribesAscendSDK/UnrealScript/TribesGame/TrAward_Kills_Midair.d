module UnrealScript.TribesGame.TrAward_Kills_Midair;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills_Midair : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Kills_Midair")); }
	private static __gshared TrAward_Kills_Midair mDefaultProperties;
	@property final static TrAward_Kills_Midair DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Kills_Midair)("TrAward_Kills_Midair TribesGame.Default__TrAward_Kills_Midair")); }
}
