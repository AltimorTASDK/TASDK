module UnrealScript.TribesGame.TrAward_Kills_Deployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills_Deployable : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Kills_Deployable")); }
	private static __gshared TrAward_Kills_Deployable mDefaultProperties;
	@property final static TrAward_Kills_Deployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Kills_Deployable)("TrAward_Kills_Deployable TribesGame.Default__TrAward_Kills_Deployable")); }
}
