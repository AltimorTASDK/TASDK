module UnrealScript.Engine.DrawBoxComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawBoxComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawBoxComponent")()); }
	private static __gshared DrawBoxComponent mDefaultProperties;
	@property final static DrawBoxComponent DefaultProperties() { mixin(MGDPC!(DrawBoxComponent, "DrawBoxComponent Engine.Default__DrawBoxComponent")()); }
	@property final
	{
		auto ref
		{
			Vector BoxExtent() { mixin(MGPC!("Vector", 496)()); }
			Material BoxMaterial() { mixin(MGPC!("Material", 492)()); }
			UObject.Color BoxColor() { mixin(MGPC!("UObject.Color", 488)()); }
		}
		bool bDrawOnlyIfSelected() { mixin(MGBPC!(508, 0x4)()); }
		bool bDrawOnlyIfSelected(bool val) { mixin(MSBPC!(508, 0x4)()); }
		bool bDrawLitBox() { mixin(MGBPC!(508, 0x2)()); }
		bool bDrawLitBox(bool val) { mixin(MSBPC!(508, 0x2)()); }
		bool bDrawWireBox() { mixin(MGBPC!(508, 0x1)()); }
		bool bDrawWireBox(bool val) { mixin(MSBPC!(508, 0x1)()); }
	}
}
