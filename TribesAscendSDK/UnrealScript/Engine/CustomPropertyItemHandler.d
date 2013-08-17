module UnrealScript.Engine.CustomPropertyItemHandler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface CustomPropertyItemHandler : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CustomPropertyItemHandler")()); }
	private static __gshared CustomPropertyItemHandler mDefaultProperties;
	@property final static CustomPropertyItemHandler DefaultProperties() { mixin(MGDPC!(CustomPropertyItemHandler, "CustomPropertyItemHandler Engine.Default__CustomPropertyItemHandler")()); }
}
