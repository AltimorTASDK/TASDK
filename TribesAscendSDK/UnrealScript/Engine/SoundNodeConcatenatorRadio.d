module UnrealScript.Engine.SoundNodeConcatenatorRadio;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeConcatenatorRadio : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeConcatenatorRadio")); }
	private static __gshared SoundNodeConcatenatorRadio mDefaultProperties;
	@property final static SoundNodeConcatenatorRadio DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeConcatenatorRadio)("SoundNodeConcatenatorRadio Engine.Default__SoundNodeConcatenatorRadio")); }
}
