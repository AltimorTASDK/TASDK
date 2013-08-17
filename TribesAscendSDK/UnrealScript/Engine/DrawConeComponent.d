module UnrealScript.Engine.DrawConeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface DrawConeComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawConeComponent")()); }
	private static __gshared DrawConeComponent mDefaultProperties;
	@property final static DrawConeComponent DefaultProperties() { mixin(MGDPC!(DrawConeComponent, "DrawConeComponent Engine.Default__DrawConeComponent")()); }
	@property final auto ref
	{
		int ConeSides() { mixin(MGPC!("int", 500)()); }
		float ConeAngle() { mixin(MGPC!("float", 496)()); }
		float ConeRadius() { mixin(MGPC!("float", 492)()); }
		UObject.Color ConeColor() { mixin(MGPC!("UObject.Color", 488)()); }
	}
}
