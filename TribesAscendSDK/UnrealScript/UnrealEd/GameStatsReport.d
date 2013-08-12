module UnrealScript.UnrealEd.GameStatsReport;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GameStatsReport : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsReport")); }
	private static __gshared GameStatsReport mDefaultProperties;
	@property final static GameStatsReport DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameStatsReport)("GameStatsReport UnrealEd.Default__GameStatsReport")); }
}
