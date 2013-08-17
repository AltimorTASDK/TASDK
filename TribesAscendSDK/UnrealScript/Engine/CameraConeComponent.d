module UnrealScript.Engine.CameraConeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CameraConeComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CameraConeComponent")()); }
	private static __gshared CameraConeComponent mDefaultProperties;
	@property final static CameraConeComponent DefaultProperties() { mixin(MGDPC!(CameraConeComponent, "CameraConeComponent Engine.Default__CameraConeComponent")()); }
}
