module UnrealScript.Engine.DrawQuadComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawQuadComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DrawQuadComponent")()); }
	private static __gshared DrawQuadComponent mDefaultProperties;
	@property final static DrawQuadComponent DefaultProperties() { mixin(MGDPC!(DrawQuadComponent, "DrawQuadComponent Engine.Default__DrawQuadComponent")()); }
	@property final auto ref
	{
		float Height() { mixin(MGPC!("float", 496)()); }
		float Width() { mixin(MGPC!("float", 492)()); }
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
}
