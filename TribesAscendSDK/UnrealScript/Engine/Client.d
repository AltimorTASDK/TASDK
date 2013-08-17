module UnrealScript.Engine.Client;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Client : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Client")()); }
	private static __gshared Client mDefaultProperties;
	@property final static Client DefaultProperties() { mixin(MGDPC!(Client, "Client Engine.Default__Client")()); }
	@property final auto ref
	{
		float DisplayGamma() { mixin(MGPC!(float, 68)()); }
		float MinDesiredFrameRate() { mixin(MGPC!(float, 64)()); }
		float InitialButtonRepeatDelay() { mixin(MGPC!(float, 72)()); }
		float ButtonRepeatDelay() { mixin(MGPC!(float, 76)()); }
	}
}
