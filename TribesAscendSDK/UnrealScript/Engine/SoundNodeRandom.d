module UnrealScript.Engine.SoundNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;

extern(C++) interface SoundNodeRandom : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeRandom")); }
	private static __gshared SoundNodeRandom mDefaultProperties;
	@property final static SoundNodeRandom DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeRandom)("SoundNodeRandom Engine.Default__SoundNodeRandom")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) Weights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 76); }
			ScriptArray!(bool) HasBeenUsed() { return *cast(ScriptArray!(bool)*)(cast(size_t)cast(void*)this + 92); }
			int NumRandomUsed() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bRandomizeWithoutReplacement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bRandomizeWithoutReplacement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
}
