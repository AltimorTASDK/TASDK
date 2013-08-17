module UnrealScript.Engine.SpeedTreeComponentFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponentFactory;

extern(C++) interface SpeedTreeComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SpeedTreeComponentFactory")); }
	private static __gshared SpeedTreeComponentFactory mDefaultProperties;
	@property final static SpeedTreeComponentFactory DefaultProperties() { mixin(MGDPC("SpeedTreeComponentFactory", "SpeedTreeComponentFactory Engine.Default__SpeedTreeComponentFactory")); }
	// WARNING: Property 'SpeedTreeComponent' has the same name as a defined type!
}
