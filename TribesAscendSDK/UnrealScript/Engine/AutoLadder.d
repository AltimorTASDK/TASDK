module UnrealScript.Engine.AutoLadder;

import ScriptClasses;
import UnrealScript.Engine.Ladder;

extern(C++) interface AutoLadder : Ladder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AutoLadder")); }
	private static __gshared AutoLadder mDefaultProperties;
	@property final static AutoLadder DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AutoLadder)("AutoLadder Engine.Default__AutoLadder")); }
}
