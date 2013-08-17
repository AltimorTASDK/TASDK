module UnrealScript.UnrealEd.CustomPropertyItemBindings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CustomPropertyItemBindings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.CustomPropertyItemBindings")()); }
	private static __gshared CustomPropertyItemBindings mDefaultProperties;
	@property final static CustomPropertyItemBindings DefaultProperties() { mixin(MGDPC!(CustomPropertyItemBindings, "CustomPropertyItemBindings UnrealEd.Default__CustomPropertyItemBindings")()); }
}
