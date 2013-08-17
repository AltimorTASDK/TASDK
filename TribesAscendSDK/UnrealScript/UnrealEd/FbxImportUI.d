module UnrealScript.UnrealEd.FbxImportUI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface FbxImportUI : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FbxImportUI")()); }
	private static __gshared FbxImportUI mDefaultProperties;
	@property final static FbxImportUI DefaultProperties() { mixin(MGDPC!(FbxImportUI, "FbxImportUI UnrealEd.Default__FbxImportUI")()); }
}
