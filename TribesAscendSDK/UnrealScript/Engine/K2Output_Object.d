module UnrealScript.Engine.K2Output_Object;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Output;

extern(C++) interface K2Output_Object : K2Output
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Output_Object")()); }
	private static __gshared K2Output_Object mDefaultProperties;
	@property final static K2Output_Object DefaultProperties() { mixin(MGDPC!(K2Output_Object, "K2Output_Object Engine.Default__K2Output_Object")()); }
	@property final auto ref ScriptClass ObjClass() { mixin(MGPC!(ScriptClass, 92)()); }
}
