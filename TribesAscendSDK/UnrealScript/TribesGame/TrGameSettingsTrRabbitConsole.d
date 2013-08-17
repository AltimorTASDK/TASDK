module UnrealScript.TribesGame.TrGameSettingsTrRabbitConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSettingsTrRabbit;

extern(C++) interface TrGameSettingsTrRabbitConsole : TrGameSettingsTrRabbit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSettingsTrRabbitConsole")()); }
	private static __gshared TrGameSettingsTrRabbitConsole mDefaultProperties;
	@property final static TrGameSettingsTrRabbitConsole DefaultProperties() { mixin(MGDPC!(TrGameSettingsTrRabbitConsole, "TrGameSettingsTrRabbitConsole TribesGame.Default__TrGameSettingsTrRabbitConsole")()); }
}
