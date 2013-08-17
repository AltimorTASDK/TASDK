module UnrealScript.Engine.DrawSphereComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawSphereComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawSphereComponent")()); }
	private static __gshared DrawSphereComponent mDefaultProperties;
	@property final static DrawSphereComponent DefaultProperties() { mixin(MGDPC!(DrawSphereComponent, "DrawSphereComponent Engine.Default__DrawSphereComponent")()); }
	@property final
	{
		auto ref
		{
			int SphereSides() { mixin(MGPC!(int, 500)()); }
			float SphereRadius() { mixin(MGPC!(float, 496)()); }
			Material SphereMaterial() { mixin(MGPC!(Material, 492)()); }
			UObject.Color SphereColor() { mixin(MGPC!(UObject.Color, 488)()); }
		}
		bool bDrawOnlyIfSelected() { mixin(MGBPC!(504, 0x4)()); }
		bool bDrawOnlyIfSelected(bool val) { mixin(MSBPC!(504, 0x4)()); }
		bool bDrawLitSphere() { mixin(MGBPC!(504, 0x2)()); }
		bool bDrawLitSphere(bool val) { mixin(MSBPC!(504, 0x2)()); }
		bool bDrawWireSphere() { mixin(MGBPC!(504, 0x1)()); }
		bool bDrawWireSphere(bool val) { mixin(MSBPC!(504, 0x1)()); }
	}
}
