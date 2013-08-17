module UnrealScript.UnrealEd.ChangePrefabSequenceClassCommandlet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ResavePackagesCommandlet;

extern(C++) interface ChangePrefabSequenceClassCommandlet : ResavePackagesCommandlet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ChangePrefabSequenceClassCommandlet")()); }
	private static __gshared ChangePrefabSequenceClassCommandlet mDefaultProperties;
	@property final static ChangePrefabSequenceClassCommandlet DefaultProperties() { mixin(MGDPC!(ChangePrefabSequenceClassCommandlet, "ChangePrefabSequenceClassCommandlet UnrealEd.Default__ChangePrefabSequenceClassCommandlet")()); }
}
