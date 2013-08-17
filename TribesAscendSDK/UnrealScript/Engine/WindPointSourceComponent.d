module UnrealScript.Engine.WindPointSourceComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WindDirectionalSourceComponent;

extern(C++) interface WindPointSourceComponent : WindDirectionalSourceComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.WindPointSourceComponent")); }
	private static __gshared WindPointSourceComponent mDefaultProperties;
	@property final static WindPointSourceComponent DefaultProperties() { mixin(MGDPC("WindPointSourceComponent", "WindPointSourceComponent Engine.Default__WindPointSourceComponent")); }
	@property final auto ref
	{
		float Radius() { mixin(MGPC("float", 112)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviewRadiusComponent'!
	}
}
