module UnrealScript.TribesGame.TrDevice_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Twinfusor;

extern(C++) interface TrDevice_HeavyTwinfusor : TrDevice_Twinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_HeavyTwinfusor")()); }
	private static __gshared TrDevice_HeavyTwinfusor mDefaultProperties;
	@property final static TrDevice_HeavyTwinfusor DefaultProperties() { mixin(MGDPC!(TrDevice_HeavyTwinfusor, "TrDevice_HeavyTwinfusor TribesGame.Default__TrDevice_HeavyTwinfusor")()); }
}
