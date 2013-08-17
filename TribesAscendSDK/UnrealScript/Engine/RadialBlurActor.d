module UnrealScript.Engine.RadialBlurActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface RadialBlurActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RadialBlurActor")); }
	private static __gshared RadialBlurActor mDefaultProperties;
	@property final static RadialBlurActor DefaultProperties() { mixin(MGDPC("RadialBlurActor", "RadialBlurActor Engine.Default__RadialBlurActor")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RadialBlur'!
}
