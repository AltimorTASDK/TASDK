module UnrealScript.Engine.DefaultPhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface DefaultPhysicsVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DefaultPhysicsVolume")()); }
	private static __gshared DefaultPhysicsVolume mDefaultProperties;
	@property final static DefaultPhysicsVolume DefaultProperties() { mixin(MGDPC!(DefaultPhysicsVolume, "DefaultPhysicsVolume Engine.Default__DefaultPhysicsVolume")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.DefaultPhysicsVolume.Destroyed")()); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
