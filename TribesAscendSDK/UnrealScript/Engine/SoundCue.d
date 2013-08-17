module UnrealScript.Engine.SoundCue;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.FaceFXAnimSet;

extern(C++) interface SoundCue : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SoundCue")); }
	private static __gshared SoundCue mDefaultProperties;
	@property final static SoundCue DefaultProperties() { mixin(MGDPC("SoundCue", "SoundCue Engine.Default__SoundCue")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetCueDuration;
		public @property static final ScriptFunction GetCueDuration() { mixin(MGF("mGetCueDuration", "Function Engine.SoundCue.GetCueDuration")); }
	}
	struct SoundNodeEditorData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SoundCue.SoundNodeEditorData")); }
		@property final auto ref
		{
			int NodePosY() { mixin(MGPS("int", 4)); }
			int NodePosX() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptString FaceFXAnimName() { mixin(MGPC("ScriptString", 168)); }
		FaceFXAnimSet FaceFXAnimSetRef() { mixin(MGPC("FaceFXAnimSet", 152)); }
		ScriptString FaceFXGroupName() { mixin(MGPC("ScriptString", 156)); }
		ScriptName SoundGroup() { mixin(MGPC("ScriptName", 188)); }
		int CurrentPlayCount() { mixin(MGPC("int", 184)); }
		int MaxConcurrentPlayCount() { mixin(MGPC("int", 180)); }
		float Duration() { mixin(MGPC("float", 148)); }
		float PitchMultiplier() { mixin(MGPC("float", 144)); }
		float VolumeMultiplier() { mixin(MGPC("float", 140)); }
		float MaxAudibleDistance() { mixin(MGPC("float", 136)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'EditorData'!
		SoundNode FirstNode() { mixin(MGPC("SoundNode", 72)); }
		AudioDevice.ESoundClassName SoundClassName() { mixin(MGPC("AudioDevice.ESoundClassName", 68)); }
		// WARNING: Property 'SoundClass' has the same name as a defined type!
	}
	final float GetCueDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCueDuration, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
