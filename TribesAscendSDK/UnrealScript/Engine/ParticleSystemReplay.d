module UnrealScript.Engine.ParticleSystemReplay;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleSystemReplay : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleSystemReplay")); }
	private static __gshared ParticleSystemReplay mDefaultProperties;
	@property final static ParticleSystemReplay DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleSystemReplay)("ParticleSystemReplay Engine.Default__ParticleSystemReplay")); }
	struct ParticleSystemReplayFrame
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemReplay.ParticleSystemReplayFrame")); }
		@property final auto ref ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame) Emitters() { return *cast(ScriptArray!(ParticleSystemReplay.ParticleEmitterReplayFrame)*)(cast(size_t)&this + 0); }
	}
	struct ParticleEmitterReplayFrame
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.ParticleSystemReplay.ParticleEmitterReplayFrame")); }
		@property final auto ref
		{
			UObject.Pointer FrameState() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
			int OriginalEmitterIndex() { return *cast(int*)(cast(size_t)&this + 4); }
			int EmitterType() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame) Frames() { return *cast(ScriptArray!(ParticleSystemReplay.ParticleSystemReplayFrame)*)(cast(size_t)cast(void*)this + 64); }
		int ClipIDNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
