module UnrealScript.TribesGame.TrAward_Destruction_Deployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Destruction_Deployable : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Destruction_Deployable")); }
	private static __gshared TrAward_Destruction_Deployable mDefaultProperties;
	@property final static TrAward_Destruction_Deployable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Destruction_Deployable)("TrAward_Destruction_Deployable TribesGame.Default__TrAward_Destruction_Deployable")); }
}
