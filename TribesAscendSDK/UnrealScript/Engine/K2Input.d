module UnrealScript.Engine.K2Input;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.K2Output;
import UnrealScript.Engine.K2Connector;

extern(C++) interface K2Input : K2Connector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.K2Input")); }
	private static __gshared K2Input mDefaultProperties;
	@property final static K2Input DefaultProperties() { mixin(MGDPC("K2Input", "K2Input Engine.Default__K2Input")); }
	@property final auto ref K2Output FromOutput() { mixin(MGPC("K2Output", 80)); }
}
