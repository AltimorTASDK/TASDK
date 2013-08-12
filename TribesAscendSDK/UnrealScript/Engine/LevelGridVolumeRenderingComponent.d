module UnrealScript.Engine.LevelGridVolumeRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LevelGridVolumeRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelGridVolumeRenderingComponent")); }
	private static __gshared LevelGridVolumeRenderingComponent mDefaultProperties;
	@property final static LevelGridVolumeRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LevelGridVolumeRenderingComponent)("LevelGridVolumeRenderingComponent Engine.Default__LevelGridVolumeRenderingComponent")); }
}
