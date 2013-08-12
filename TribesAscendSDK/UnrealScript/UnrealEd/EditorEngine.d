module UnrealScript.UnrealEd.EditorEngine;

import ScriptClasses;
import UnrealScript.Engine.Engine;

extern(C++) interface EditorEngine : Engine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorEngine")); }
	private static __gshared EditorEngine mDefaultProperties;
	@property final static EditorEngine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EditorEngine)("EditorEngine UnrealEd.Default__EditorEngine")); }
}
