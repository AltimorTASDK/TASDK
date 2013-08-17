module UnrealScript.UnrealEd.EditorComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface EditorComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.EditorComponent")); }
	private static __gshared EditorComponent mDefaultProperties;
	@property final static EditorComponent DefaultProperties() { mixin(MGDPC("EditorComponent", "EditorComponent UnrealEd.Default__EditorComponent")); }
}
