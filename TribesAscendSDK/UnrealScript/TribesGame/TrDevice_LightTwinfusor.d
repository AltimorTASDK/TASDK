module UnrealScript.TribesGame.TrDevice_LightTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Twinfusor;

extern(C++) interface TrDevice_LightTwinfusor : TrDevice_Twinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_LightTwinfusor")()); }
	private static __gshared TrDevice_LightTwinfusor mDefaultProperties;
	@property final static TrDevice_LightTwinfusor DefaultProperties() { mixin(MGDPC!(TrDevice_LightTwinfusor, "TrDevice_LightTwinfusor TribesGame.Default__TrDevice_LightTwinfusor")()); }
}
