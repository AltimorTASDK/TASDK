module UnrealScript.Engine.SoundClass;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface SoundClass : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundClass")); }
	private static __gshared SoundClass mDefaultProperties;
	@property final static SoundClass DefaultProperties() { mixin(MGDPC("SoundClass", "SoundClass Engine.Default__SoundClass")); }
	struct SoundClassEditorData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SoundClass.SoundClassEditorData")); }
		@property final auto ref
		{
			int NodePosY() { mixin(MGPS("int", 4)); }
			int NodePosX() { mixin(MGPS("int", 0)); }
		}
	}
	struct SoundClassProperties
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SoundClass.SoundClassProperties")); }
		@property final
		{
			auto ref
			{
				float RadioFilterVolumeThreshold() { mixin(MGPS("float", 24)); }
				float RadioFilterVolume() { mixin(MGPS("float", 20)); }
				float VoiceCenterChannelVolume() { mixin(MGPS("float", 16)); }
				float LFEBleed() { mixin(MGPS("float", 12)); }
				float StereoBleed() { mixin(MGPS("float", 8)); }
				float Pitch() { mixin(MGPS("float", 4)); }
				float VolumeVar() { mixin(MGPS("float", 0)); }
			}
			bool bBassBoost() { mixin(MGBPS(28, 0x40)); }
			bool bBassBoost(bool val) { mixin(MSBPS(28, 0x40)); }
			bool bCenterChannelOnly() { mixin(MGBPS(28, 0x20)); }
			bool bCenterChannelOnly(bool val) { mixin(MSBPS(28, 0x20)); }
			bool bReverb() { mixin(MGBPS(28, 0x10)); }
			bool bReverb(bool val) { mixin(MSBPS(28, 0x10)); }
			bool bIsMusic() { mixin(MGBPS(28, 0x8)); }
			bool bIsMusic(bool val) { mixin(MSBPS(28, 0x8)); }
			bool bIsUISound() { mixin(MGBPS(28, 0x4)); }
			bool bIsUISound(bool val) { mixin(MSBPS(28, 0x4)); }
			bool bAlwaysPlay() { mixin(MGBPS(28, 0x2)); }
			bool bAlwaysPlay(bool val) { mixin(MSBPS(28, 0x2)); }
			bool bApplyEffects() { mixin(MGBPS(28, 0x1)); }
			bool bApplyEffects(bool val) { mixin(MSBPS(28, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) ChildClassNames() { mixin(MGPC("ScriptArray!(ScriptName)", 92)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'EditorData'!
			int MenuID() { mixin(MGPC("int", 108)); }
			SoundClass.SoundClassProperties Properties() { mixin(MGPC("SoundClass.SoundClassProperties", 60)); }
		}
		bool bIsChild() { mixin(MGBPC(104, 0x1)); }
		bool bIsChild(bool val) { mixin(MSBPC(104, 0x1)); }
	}
}
