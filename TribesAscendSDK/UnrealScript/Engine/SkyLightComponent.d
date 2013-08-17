module UnrealScript.Engine.SkyLightComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SkyLightComponent : LightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SkyLightComponent")); }
	private static __gshared SkyLightComponent mDefaultProperties;
	@property final static SkyLightComponent DefaultProperties() { mixin(MGDPC("SkyLightComponent", "SkyLightComponent Engine.Default__SkyLightComponent")); }
	@property final auto ref
	{
		UObject.Color LowerColor() { mixin(MGPC("UObject.Color", 436)); }
		float LowerBrightness() { mixin(MGPC("float", 432)); }
	}
}
