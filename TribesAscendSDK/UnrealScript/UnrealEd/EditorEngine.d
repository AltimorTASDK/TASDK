module UnrealScript.UnrealEd.EditorEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Engine;

extern(C++) interface EditorEngine : Engine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.EditorEngine")()); }
	private static __gshared EditorEngine mDefaultProperties;
	@property final static EditorEngine DefaultProperties() { mixin(MGDPC!(EditorEngine, "EditorEngine UnrealEd.Default__EditorEngine")()); }
}
