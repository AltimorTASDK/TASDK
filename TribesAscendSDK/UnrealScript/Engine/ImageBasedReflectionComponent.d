module UnrealScript.Engine.ImageBasedReflectionComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface ImageBasedReflectionComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ImageBasedReflectionComponent")()); }
	private static __gshared ImageBasedReflectionComponent mDefaultProperties;
	@property final static ImageBasedReflectionComponent DefaultProperties() { mixin(MGDPC!(ImageBasedReflectionComponent, "ImageBasedReflectionComponent Engine.Default__ImageBasedReflectionComponent")()); }
	@property final
	{
		auto ref
		{
			UObject.LinearColor ReflectionColor() { mixin(MGPC!("UObject.LinearColor", 616)()); }
			Texture2D ReflectionTexture() { mixin(MGPC!("Texture2D", 612)()); }
		}
		bool bTwoSided() { mixin(MGBPC!(608, 0x2)()); }
		bool bTwoSided(bool val) { mixin(MSBPC!(608, 0x2)()); }
		bool bEnabled() { mixin(MGBPC!(608, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(608, 0x1)()); }
	}
}
