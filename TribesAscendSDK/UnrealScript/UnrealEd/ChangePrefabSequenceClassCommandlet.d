module UnrealScript.UnrealEd.ChangePrefabSequenceClassCommandlet;

import ScriptClasses;
import UnrealScript.UnrealEd.ResavePackagesCommandlet;

extern(C++) interface ChangePrefabSequenceClassCommandlet : ResavePackagesCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ChangePrefabSequenceClassCommandlet")); }
	private static __gshared ChangePrefabSequenceClassCommandlet mDefaultProperties;
	@property final static ChangePrefabSequenceClassCommandlet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ChangePrefabSequenceClassCommandlet)("ChangePrefabSequenceClassCommandlet UnrealEd.Default__ChangePrefabSequenceClassCommandlet")); }
}
