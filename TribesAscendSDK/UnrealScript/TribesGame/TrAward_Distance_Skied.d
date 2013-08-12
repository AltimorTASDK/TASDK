module UnrealScript.TribesGame.TrAward_Distance_Skied;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Distance_Skied : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Distance_Skied")); }
	private static __gshared TrAward_Distance_Skied mDefaultProperties;
	@property final static TrAward_Distance_Skied DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Distance_Skied)("TrAward_Distance_Skied TribesGame.Default__TrAward_Distance_Skied")); }
}
