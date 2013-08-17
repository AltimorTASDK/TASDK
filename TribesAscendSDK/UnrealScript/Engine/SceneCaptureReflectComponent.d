module UnrealScript.Engine.SceneCaptureReflectComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCaptureReflectComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCaptureReflectComponent")()); }
	private static __gshared SceneCaptureReflectComponent mDefaultProperties;
	@property final static SceneCaptureReflectComponent DefaultProperties() { mixin(MGDPC!(SceneCaptureReflectComponent, "SceneCaptureReflectComponent Engine.Default__SceneCaptureReflectComponent")()); }
	@property final auto ref
	{
		float ScaleFOV() { mixin(MGPC!("float", 148)()); }
		TextureRenderTarget2D TextureTarget() { mixin(MGPC!("TextureRenderTarget2D", 144)()); }
	}
}
