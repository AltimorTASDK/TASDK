module UnrealScript.TribesGame.TrPowerGenerator_Siege;

import ScriptClasses;
import UnrealScript.TribesGame.TrPowerGenerator;

extern(C++) interface TrPowerGenerator_Siege : TrPowerGenerator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPowerGenerator_Siege")); }
	private static __gshared TrPowerGenerator_Siege mDefaultProperties;
	@property final static TrPowerGenerator_Siege DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPowerGenerator_Siege)("TrPowerGenerator_Siege TribesGame.Default__TrPowerGenerator_Siege")); }
}
