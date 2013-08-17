module UnrealScript.UnrealEd.GameStatsVisitorImpl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GameStatsVisitorImpl : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GameStatsVisitorImpl")); }
	private static __gshared GameStatsVisitorImpl mDefaultProperties;
	@property final static GameStatsVisitorImpl DefaultProperties() { mixin(MGDPC("GameStatsVisitorImpl", "GameStatsVisitorImpl UnrealEd.Default__GameStatsVisitorImpl")); }
}
