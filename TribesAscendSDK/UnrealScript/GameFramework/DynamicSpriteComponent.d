module UnrealScript.GameFramework.DynamicSpriteComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpriteComponent;
import UnrealScript.Core.UObject;

extern(C++) interface DynamicSpriteComponent : SpriteComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.DynamicSpriteComponent")); }
	private static __gshared DynamicSpriteComponent mDefaultProperties;
	@property final static DynamicSpriteComponent DefaultProperties() { mixin(MGDPC("DynamicSpriteComponent", "DynamicSpriteComponent GameFramework.Default__DynamicSpriteComponent")); }
	@property final auto ref
	{
		int LoopCount() { mixin(MGPC("int", 576)); }
		Vector LocationOffset() { mixin(MGPC("Vector", 564)); }
		UObject.InterpCurveVector2D AnimatedPosition() { mixin(MGPC("UObject.InterpCurveVector2D", 548)); }
		UObject.InterpCurveLinearColor AnimatedColor() { mixin(MGPC("UObject.InterpCurveLinearColor", 532)); }
		UObject.InterpCurveFloat AnimatedScale() { mixin(MGPC("UObject.InterpCurveFloat", 516)); }
	}
}
