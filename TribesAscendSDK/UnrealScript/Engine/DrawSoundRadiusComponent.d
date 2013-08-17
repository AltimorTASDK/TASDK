module UnrealScript.Engine.DrawSoundRadiusComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawSoundRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DrawSoundRadiusComponent")); }
	private static __gshared DrawSoundRadiusComponent mDefaultProperties;
	@property final static DrawSoundRadiusComponent DefaultProperties() { mixin(MGDPC("DrawSoundRadiusComponent", "DrawSoundRadiusComponent Engine.Default__DrawSoundRadiusComponent")); }
}
