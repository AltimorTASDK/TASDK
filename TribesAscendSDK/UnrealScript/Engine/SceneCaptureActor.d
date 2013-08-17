module UnrealScript.Engine.SceneCaptureActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface SceneCaptureActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCaptureActor")()); }
	private static __gshared SceneCaptureActor mDefaultProperties;
	@property final static SceneCaptureActor DefaultProperties() { mixin(MGDPC!(SceneCaptureActor, "SceneCaptureActor Engine.Default__SceneCaptureActor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.SceneCaptureActor.OnToggle")()); }
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SceneCapture'!
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
