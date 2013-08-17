module UnrealScript.Engine.DrawLightConeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DrawConeComponent;

extern(C++) interface DrawLightConeComponent : DrawConeComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawLightConeComponent")()); }
	private static __gshared DrawLightConeComponent mDefaultProperties;
	@property final static DrawLightConeComponent DefaultProperties() { mixin(MGDPC!(DrawLightConeComponent, "DrawLightConeComponent Engine.Default__DrawLightConeComponent")()); }
}
