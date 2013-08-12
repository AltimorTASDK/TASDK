module UnrealScript.TribesGame.TrAward_Destruction_Vehicle;

import ScriptClasses;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Destruction_Vehicle : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAward_Destruction_Vehicle")); }
	private static __gshared TrAward_Destruction_Vehicle mDefaultProperties;
	@property final static TrAward_Destruction_Vehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAward_Destruction_Vehicle)("TrAward_Destruction_Vehicle TribesGame.Default__TrAward_Destruction_Vehicle")); }
}
