module UnrealScript.TribesGame.TrGameSettingsTrRabbitConsole;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsTrRabbit;

extern(C++) interface TrGameSettingsTrRabbitConsole : TrGameSettingsTrRabbit
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrRabbitConsole")); }
}
