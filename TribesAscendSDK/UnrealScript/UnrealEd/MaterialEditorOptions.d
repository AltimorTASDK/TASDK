module UnrealScript.UnrealEd.MaterialEditorOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialEditorOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MaterialEditorOptions")); }
	private static __gshared MaterialEditorOptions mDefaultProperties;
	@property final static MaterialEditorOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialEditorOptions)("MaterialEditorOptions UnrealEd.Default__MaterialEditorOptions")); }
}
