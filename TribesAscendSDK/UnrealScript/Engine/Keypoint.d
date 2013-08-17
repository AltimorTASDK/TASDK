module UnrealScript.Engine.Keypoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface Keypoint : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Keypoint")); }
	private static __gshared Keypoint mDefaultProperties;
	@property final static Keypoint DefaultProperties() { mixin(MGDPC("Keypoint", "Keypoint Engine.Default__Keypoint")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SpriteComp'!
}
