module UnrealScript.Engine.PrefabSequenceContainer;

import ScriptClasses;
import UnrealScript.Engine.Sequence;

extern(C++) interface PrefabSequenceContainer : Sequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrefabSequenceContainer")); }
}
