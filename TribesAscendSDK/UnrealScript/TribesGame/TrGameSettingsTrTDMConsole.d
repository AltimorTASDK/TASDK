module UnrealScript.TribesGame.TrGameSettingsTrTDMConsole;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSettingsTrTDM;

extern(C++) interface TrGameSettingsTrTDMConsole : TrGameSettingsTrTDM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSettingsTrTDMConsole")); }
}
