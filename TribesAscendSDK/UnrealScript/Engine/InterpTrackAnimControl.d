module UnrealScript.Engine.InterpTrackAnimControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackAnimControl : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackAnimControl")); }
	private static __gshared InterpTrackAnimControl mDefaultProperties;
	@property final static InterpTrackAnimControl DefaultProperties() { mixin(MGDPC("InterpTrackAnimControl", "InterpTrackAnimControl Engine.Default__InterpTrackAnimControl")); }
	struct AnimControlTrackKey
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackAnimControl.AnimControlTrackKey")); }
		@property final
		{
			auto ref
			{
				float AnimPlayRate() { mixin(MGPS("float", 20)); }
				float AnimEndOffset() { mixin(MGPS("float", 16)); }
				float AnimStartOffset() { mixin(MGPS("float", 12)); }
				ScriptName AnimSeqName() { mixin(MGPS("ScriptName", 4)); }
				float StartTime() { mixin(MGPS("float", 0)); }
			}
			bool bReverse() { mixin(MGBPS(24, 0x2)); }
			bool bReverse(bool val) { mixin(MSBPS(24, 0x2)); }
			bool bLooping() { mixin(MGBPS(24, 0x1)); }
			bool bLooping(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimSet) AnimSets() { mixin(MGPC("ScriptArray!(AnimSet)", 148)); }
			ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey) AnimSeqs() { mixin(MGPC("ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey)", 168)); }
			ScriptName SlotName() { mixin(MGPC("ScriptName", 160)); }
		}
		bool bEnableRootMotion() { mixin(MGBPC(180, 0x1)); }
		bool bEnableRootMotion(bool val) { mixin(MSBPC(180, 0x1)); }
	}
}
