module UnrealScript.GameFramework.GameDestinationConnRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface GameDestinationConnRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameDestinationConnRenderingComponent")); }
	private static __gshared GameDestinationConnRenderingComponent mDefaultProperties;
	@property final static GameDestinationConnRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameDestinationConnRenderingComponent)("GameDestinationConnRenderingComponent GameFramework.Default__GameDestinationConnRenderingComponent")); }
}
