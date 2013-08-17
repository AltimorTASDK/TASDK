module UnrealScript.Engine.Model;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Model : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Model")()); }
	private static __gshared Model mDefaultProperties;
	@property final static Model DefaultProperties() { mixin(MGDPC!(Model, "Model Engine.Default__Model")()); }
}
