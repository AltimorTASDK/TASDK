module UnrealScript.Engine.DrawLightRadiusComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawLightRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawLightRadiusComponent")()); }
	private static __gshared DrawLightRadiusComponent mDefaultProperties;
	@property final static DrawLightRadiusComponent DefaultProperties() { mixin(MGDPC!(DrawLightRadiusComponent, "DrawLightRadiusComponent Engine.Default__DrawLightRadiusComponent")()); }
}
