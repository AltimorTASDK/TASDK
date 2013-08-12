module UnrealScript.UnrealEd.UpdateKismetCommandlet;

import ScriptClasses;
import UnrealScript.Core.Commandlet;

extern(C++) interface UpdateKismetCommandlet : Commandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.UpdateKismetCommandlet")); }
	private static __gshared UpdateKismetCommandlet mDefaultProperties;
	@property final static UpdateKismetCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UpdateKismetCommandlet)("UpdateKismetCommandlet UnrealEd.Default__UpdateKismetCommandlet")); }
}
