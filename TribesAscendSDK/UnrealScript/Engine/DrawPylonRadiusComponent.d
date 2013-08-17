module UnrealScript.Engine.DrawPylonRadiusComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawPylonRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DrawPylonRadiusComponent")); }
	private static __gshared DrawPylonRadiusComponent mDefaultProperties;
	@property final static DrawPylonRadiusComponent DefaultProperties() { mixin(MGDPC("DrawPylonRadiusComponent", "DrawPylonRadiusComponent Engine.Default__DrawPylonRadiusComponent")); }
}
