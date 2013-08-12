module UnrealScript.UnrealEd.EditorPlayer;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;

extern(C++) interface EditorPlayer : LocalPlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorPlayer")); }
	private static __gshared EditorPlayer mDefaultProperties;
	@property final static EditorPlayer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EditorPlayer)("EditorPlayer UnrealEd.Default__EditorPlayer")); }
}
