module UnrealScript.UnrealEd.TransBuffer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.Transactor;

extern(C++) interface TransBuffer : Transactor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TransBuffer")()); }
	private static __gshared TransBuffer mDefaultProperties;
	@property final static TransBuffer DefaultProperties() { mixin(MGDPC!(TransBuffer, "TransBuffer UnrealEd.Default__TransBuffer")()); }
}
