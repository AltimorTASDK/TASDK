module UnrealScript.Engine.K2Input_String;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Input_String : K2Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.K2Input_String")()); }
	private static __gshared K2Input_String mDefaultProperties;
	@property final static K2Input_String DefaultProperties() { mixin(MGDPC!(K2Input_String, "K2Input_String Engine.Default__K2Input_String")()); }
	@property final auto ref ScriptString DefaultString() { mixin(MGPC!("ScriptString", 84)()); }
}
