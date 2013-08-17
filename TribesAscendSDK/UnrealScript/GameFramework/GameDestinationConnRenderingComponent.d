module UnrealScript.GameFramework.GameDestinationConnRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface GameDestinationConnRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameDestinationConnRenderingComponent")); }
	private static __gshared GameDestinationConnRenderingComponent mDefaultProperties;
	@property final static GameDestinationConnRenderingComponent DefaultProperties() { mixin(MGDPC("GameDestinationConnRenderingComponent", "GameDestinationConnRenderingComponent GameFramework.Default__GameDestinationConnRenderingComponent")); }
}
