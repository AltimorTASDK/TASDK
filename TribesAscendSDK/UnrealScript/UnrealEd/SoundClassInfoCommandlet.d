module UnrealScript.UnrealEd.SoundClassInfoCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface SoundClassInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SoundClassInfoCommandlet")); }
}
