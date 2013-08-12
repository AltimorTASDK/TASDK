module UnrealScript.Engine.InterpTrackAnimControl;

import ScriptClasses;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackAnimControl : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackAnimControl")); }
	private static __gshared InterpTrackAnimControl mDefaultProperties;
	@property final static InterpTrackAnimControl DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackAnimControl)("InterpTrackAnimControl Engine.Default__InterpTrackAnimControl")); }
	struct AnimControlTrackKey
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackAnimControl.AnimControlTrackKey")); }
		@property final
		{
			auto ref
			{
				float AnimPlayRate() { return *cast(float*)(cast(size_t)&this + 20); }
				float AnimEndOffset() { return *cast(float*)(cast(size_t)&this + 16); }
				float AnimStartOffset() { return *cast(float*)(cast(size_t)&this + 12); }
				ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
				float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool bReverse() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bReverse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bLooping() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSet) AnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 148); }
			ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey) AnimSeqs() { return *cast(ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey)*)(cast(size_t)cast(void*)this + 168); }
			ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
		}
		bool bEnableRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x1) != 0; }
		bool bEnableRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x1; } return val; }
	}
}
