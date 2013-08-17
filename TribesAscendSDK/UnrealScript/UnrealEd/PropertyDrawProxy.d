module UnrealScript.UnrealEd.PropertyDrawProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PropertyDrawProxy : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PropertyDrawProxy")()); }
	private static __gshared PropertyDrawProxy mDefaultProperties;
	@property final static PropertyDrawProxy DefaultProperties() { mixin(MGDPC!(PropertyDrawProxy, "PropertyDrawProxy UnrealEd.Default__PropertyDrawProxy")()); }
}
