module UnrealScript.Engine.SoundNodeMature;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeMature : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeMature")); }
	private static __gshared SoundNodeMature mDefaultProperties;
	@property final static SoundNodeMature DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeMature)("SoundNodeMature Engine.Default__SoundNodeMature")); }
}
