module UnrealScript.UnrealEd.GameStatsVisitorImpl;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface GameStatsVisitorImpl : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsVisitorImpl")); }
	private static __gshared GameStatsVisitorImpl mDefaultProperties;
	@property final static GameStatsVisitorImpl DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameStatsVisitorImpl)("GameStatsVisitorImpl UnrealEd.Default__GameStatsVisitorImpl")); }
}
