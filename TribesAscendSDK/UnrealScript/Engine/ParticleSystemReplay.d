module UnrealScript.Engine.ParticleSystemReplay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleSystemReplay : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleSystemReplay")); }
	private static __gshared ParticleSystemReplay mDefaultProperties;
	@property final static ParticleSystemReplay DefaultProperties() { mixin(MGDPC("ParticleSystemReplay", "ParticleSystemReplay Engine.Default__ParticleSystemReplay")); }
	struct ParticleSystemReplayFrame
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemReplay.ParticleSystemReplayFrame")); }
		@property final auto ref ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame) Emitters() { mixin(MGPS("ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame)", 0)); }
	}
	struct ParticleEmitterReplayFrame
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleSystemReplay.ParticleEmitterReplayFrame")); }
		@property final auto ref
		{
			Pointer FrameState() { mixin(MGPS("Pointer", 8)); }
			int OriginalEmitterIndex() { mixin(MGPS("int", 4)); }
			int EmitterType() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame) Frames() { mixin(MGPC("ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame)", 64)); }
		int ClipIDNumber() { mixin(MGPC("int", 60)); }
	}
}
