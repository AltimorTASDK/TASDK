module UnrealScript.Engine.DrawCylinderComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCylinderComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DrawCylinderComponent")); }
	private static __gshared DrawCylinderComponent mDefaultProperties;
	@property final static DrawCylinderComponent DefaultProperties() { mixin(MGDPC("DrawCylinderComponent", "DrawCylinderComponent Engine.Default__DrawCylinderComponent")); }
	@property final
	{
		auto ref
		{
			int CylinderSides() { mixin(MGPC("int", 512)); }
			float CylinderHeightOffset() { mixin(MGPC("float", 508)); }
			float CylinderHeight() { mixin(MGPC("float", 504)); }
			float CylinderTopRadius() { mixin(MGPC("float", 500)); }
			float CylinderRadius() { mixin(MGPC("float", 496)); }
			Material CylinderMaterial() { mixin(MGPC("Material", 492)); }
			UObject.Color CylinderColor() { mixin(MGPC("UObject.Color", 488)); }
		}
		bool bDrawOnlyIfSelected() { mixin(MGBPC(516, 0x4)); }
		bool bDrawOnlyIfSelected(bool val) { mixin(MSBPC(516, 0x4)); }
		bool bDrawLitCylinder() { mixin(MGBPC(516, 0x2)); }
		bool bDrawLitCylinder(bool val) { mixin(MSBPC(516, 0x2)); }
		bool bDrawWireCylinder() { mixin(MGBPC(516, 0x1)); }
		bool bDrawWireCylinder(bool val) { mixin(MSBPC(516, 0x1)); }
	}
}
