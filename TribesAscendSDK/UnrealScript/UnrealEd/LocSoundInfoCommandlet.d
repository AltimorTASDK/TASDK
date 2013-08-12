module UnrealScript.UnrealEd.LocSoundInfoCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface LocSoundInfoCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LocSoundInfoCommandlet")); }
	private static __gshared LocSoundInfoCommandlet mDefaultProperties;
	@property final static LocSoundInfoCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LocSoundInfoCommandlet)("LocSoundInfoCommandlet UnrealEd.Default__LocSoundInfoCommandlet")); }
}
