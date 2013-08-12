module UnrealScript.Engine.Keypoint;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface Keypoint : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Keypoint")); }
	private static __gshared Keypoint mDefaultProperties;
	@property final static Keypoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Keypoint)("Keypoint Engine.Default__Keypoint")); }
}
