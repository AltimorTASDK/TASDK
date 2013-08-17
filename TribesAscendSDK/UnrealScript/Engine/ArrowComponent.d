module UnrealScript.Engine.ArrowComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ArrowComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ArrowComponent")()); }
	private static __gshared ArrowComponent mDefaultProperties;
	@property final static ArrowComponent DefaultProperties() { mixin(MGDPC!(ArrowComponent, "ArrowComponent Engine.Default__ArrowComponent")()); }
	@property final
	{
		auto ref
		{
			float ArrowSize() { mixin(MGPC!(float, 492)()); }
			UObject.Color ArrowColor() { mixin(MGPC!(UObject.Color, 488)()); }
		}
		bool bTreatAsASprite() { mixin(MGBPC!(496, 0x1)()); }
		bool bTreatAsASprite(bool val) { mixin(MSBPC!(496, 0x1)()); }
	}
}
