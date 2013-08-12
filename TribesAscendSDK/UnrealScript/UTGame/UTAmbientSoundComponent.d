module UnrealScript.UTGame.UTAmbientSoundComponent;

import ScriptClasses;
import UnrealScript.Engine.AudioComponent;

extern(C++) interface UTAmbientSoundComponent : AudioComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAmbientSoundComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOcclusionChanged;
		public @property static final ScriptFunction OcclusionChanged() { return mOcclusionChanged ? mOcclusionChanged : (mOcclusionChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAmbientSoundComponent.OcclusionChanged")); }
	}
	final void OcclusionChanged(bool bNowOccluded)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOccluded;
		(cast(ScriptObject)this).ProcessEvent(Functions.OcclusionChanged, params.ptr, cast(void*)0);
	}
}
