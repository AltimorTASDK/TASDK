module UnrealScript.Core.DelegateProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Property;

extern(C++) interface DelegateProperty : Property
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.DelegateProperty")()); }
	private static __gshared DelegateProperty mDefaultProperties;
	@property final static DelegateProperty DefaultProperties() { mixin(MGDPC!(DelegateProperty, "DelegateProperty Core.Default__DelegateProperty")()); }
}
