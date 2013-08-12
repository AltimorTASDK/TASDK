module UnrealScript.UnrealEd.EditorComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface EditorComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorComponent")); }
	private static __gshared EditorComponent mDefaultProperties;
	@property final static EditorComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EditorComponent)("EditorComponent UnrealEd.Default__EditorComponent")); }
}
