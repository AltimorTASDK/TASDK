module UnrealScript.UnrealEd.SequenceObjectHelper;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface SequenceObjectHelper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.SequenceObjectHelper")); }
	private static __gshared SequenceObjectHelper mDefaultProperties;
	@property final static SequenceObjectHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceObjectHelper)("SequenceObjectHelper UnrealEd.Default__SequenceObjectHelper")); }
}
