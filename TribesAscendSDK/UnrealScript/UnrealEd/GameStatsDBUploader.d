module UnrealScript.UnrealEd.GameStatsDBUploader;

import ScriptClasses;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStatsDBUploader : GameplayEventsHandler
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsDBUploader")); }
}
