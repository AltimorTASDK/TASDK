module UnrealScript.Engine.StaticMeshActor;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActorBase;

extern(C++) interface StaticMeshActor : StaticMeshActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshActor")); }
	private static __gshared StaticMeshActor mDefaultProperties;
	@property final static StaticMeshActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshActor)("StaticMeshActor Engine.Default__StaticMeshActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPreBeginPlay;
		public @property static final ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.StaticMeshActor.PreBeginPlay")); }
	}
	@property final
	{
		bool bDisableAutoBaseOnProcBuilding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bDisableAutoBaseOnProcBuilding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
}
