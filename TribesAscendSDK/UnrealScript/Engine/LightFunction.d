module UnrealScript.Engine.LightFunction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface LightFunction : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LightFunction")); }
	private static __gshared LightFunction mDefaultProperties;
	@property final static LightFunction DefaultProperties() { mixin(MGDPC("LightFunction", "LightFunction Engine.Default__LightFunction")); }
	@property final auto ref
	{
		float DisabledBrightness() { mixin(MGPC("float", 76)); }
		Vector Scale() { mixin(MGPC("Vector", 64)); }
		MaterialInterface SourceMaterial() { mixin(MGPC("MaterialInterface", 60)); }
	}
}
