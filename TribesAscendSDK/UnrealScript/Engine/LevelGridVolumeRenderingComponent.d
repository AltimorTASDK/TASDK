module UnrealScript.Engine.LevelGridVolumeRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LevelGridVolumeRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LevelGridVolumeRenderingComponent")()); }
	private static __gshared LevelGridVolumeRenderingComponent mDefaultProperties;
	@property final static LevelGridVolumeRenderingComponent DefaultProperties() { mixin(MGDPC!(LevelGridVolumeRenderingComponent, "LevelGridVolumeRenderingComponent Engine.Default__LevelGridVolumeRenderingComponent")()); }
}
