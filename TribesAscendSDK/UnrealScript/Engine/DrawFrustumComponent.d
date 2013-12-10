module UnrealScript.Engine.DrawFrustumComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawFrustumComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DrawFrustumComponent")); }
	private static __gshared DrawFrustumComponent mDefaultProperties;
	@property final static DrawFrustumComponent DefaultProperties() { mixin(MGDPC("DrawFrustumComponent", "DrawFrustumComponent Engine.Default__DrawFrustumComponent")); }
	@property final auto ref
	{
		Texture TextureVar() { mixin(MGPC("Texture", 508)); }
		float FrustumEndDist() { mixin(MGPC("float", 504)); }
		float FrustumStartDist() { mixin(MGPC("float", 500)); }
		float FrustumAspectRatio() { mixin(MGPC("float", 496)); }
		float FrustumAngle() { mixin(MGPC("float", 492)); }
		UObject.Color FrustumColor() { mixin(MGPC("UObject.Color", 488)); }
	}
}
