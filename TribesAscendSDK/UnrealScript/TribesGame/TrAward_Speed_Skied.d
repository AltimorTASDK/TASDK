module UnrealScript.TribesGame.TrAward_Speed_Skied;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_Skied : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Speed_Skied")); }
	private static __gshared TrAward_Speed_Skied mDefaultProperties;
	@property final static TrAward_Speed_Skied DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Speed_Skied)("TrAward_Speed_Skied TribesGame.Default__TrAward_Speed_Skied")); }
}
