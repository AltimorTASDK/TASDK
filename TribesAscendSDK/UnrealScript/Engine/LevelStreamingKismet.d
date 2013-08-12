module UnrealScript.Engine.LevelStreamingKismet;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingKismet : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelStreamingKismet")); }
	private static __gshared LevelStreamingKismet mDefaultProperties;
	@property final static LevelStreamingKismet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelStreamingKismet)("LevelStreamingKismet Engine.Default__LevelStreamingKismet")); }
}
