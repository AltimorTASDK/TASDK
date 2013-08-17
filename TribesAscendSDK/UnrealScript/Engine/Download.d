module UnrealScript.Engine.Download;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Download : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Download")()); }
	private static __gshared Download mDefaultProperties;
	@property final static Download DefaultProperties() { mixin(MGDPC!(Download, "Download Engine.Default__Download")()); }
}
