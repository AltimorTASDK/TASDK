module UnrealScript.UnrealEd.EditorUserSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface EditorUserSettings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.EditorUserSettings")()); }
	private static __gshared EditorUserSettings mDefaultProperties;
	@property final static EditorUserSettings DefaultProperties() { mixin(MGDPC!(EditorUserSettings, "EditorUserSettings UnrealEd.Default__EditorUserSettings")()); }
}
