module UnrealScript.Engine.MaterialEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PostProcessEffect;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface MaterialEffect : PostProcessEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MaterialEffect")()); }
	private static __gshared MaterialEffect mDefaultProperties;
	@property final static MaterialEffect DefaultProperties() { mixin(MGDPC!(MaterialEffect, "MaterialEffect Engine.Default__MaterialEffect")()); }
	// WARNING: Property 'Material' has the same name as a defined type!
}
