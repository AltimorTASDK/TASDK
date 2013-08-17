module UnrealScript.Engine.BlurEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;

extern(C++) interface BlurEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.BlurEffect")); }
	private static __gshared BlurEffect mDefaultProperties;
	@property final static BlurEffect DefaultProperties() { mixin(MGDPC("BlurEffect", "BlurEffect Engine.Default__BlurEffect")); }
	@property final auto ref int BlurKernelSize() { mixin(MGPC("int", 100)); }
}
