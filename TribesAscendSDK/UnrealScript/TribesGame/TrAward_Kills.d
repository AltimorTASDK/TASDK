module UnrealScript.TribesGame.TrAward_Kills;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Kills")); }
	private static __gshared TrAward_Kills mDefaultProperties;
	@property final static TrAward_Kills DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Kills)("TrAward_Kills TribesGame.Default__TrAward_Kills")); }
}
