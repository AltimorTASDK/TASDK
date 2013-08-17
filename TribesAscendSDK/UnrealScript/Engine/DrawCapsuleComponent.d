module UnrealScript.Engine.DrawCapsuleComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCapsuleComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DrawCapsuleComponent")); }
	private static __gshared DrawCapsuleComponent mDefaultProperties;
	@property final static DrawCapsuleComponent DefaultProperties() { mixin(MGDPC("DrawCapsuleComponent", "DrawCapsuleComponent Engine.Default__DrawCapsuleComponent")); }
	@property final
	{
		auto ref
		{
			float CapsuleRadius() { mixin(MGPC("float", 500)); }
			float CapsuleHeight() { mixin(MGPC("float", 496)); }
			Material CapsuleMaterial() { mixin(MGPC("Material", 492)); }
			UObject.Color CapsuleColor() { mixin(MGPC("UObject.Color", 488)); }
		}
		bool bDrawOnlyIfSelected() { mixin(MGBPC(504, 0x4)); }
		bool bDrawOnlyIfSelected(bool val) { mixin(MSBPC(504, 0x4)); }
		bool bDrawLitCapsule() { mixin(MGBPC(504, 0x2)); }
		bool bDrawLitCapsule(bool val) { mixin(MSBPC(504, 0x2)); }
		bool bDrawWireCapsule() { mixin(MGBPC(504, 0x1)); }
		bool bDrawWireCapsule(bool val) { mixin(MSBPC(504, 0x1)); }
	}
}
