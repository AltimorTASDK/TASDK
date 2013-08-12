module UnrealScript.Engine.LevelBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface LevelBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelBase")); }
	private static __gshared LevelBase mDefaultProperties;
	@property final static LevelBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelBase)("LevelBase Engine.Default__LevelBase")); }
}
