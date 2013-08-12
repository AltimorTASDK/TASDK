module UnrealScript.Engine.SceneCaptureReflectComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCaptureReflectComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCaptureReflectComponent")); }
	private static __gshared SceneCaptureReflectComponent mDefaultProperties;
	@property final static SceneCaptureReflectComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCaptureReflectComponent)("SceneCaptureReflectComponent Engine.Default__SceneCaptureReflectComponent")); }
	@property final auto ref
	{
		float ScaleFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	}
}
