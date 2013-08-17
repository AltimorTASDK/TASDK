module UnrealScript.Engine.AnimNotify_ViewShake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_ViewShake : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify_ViewShake")()); }
	private static __gshared AnimNotify_ViewShake mDefaultProperties;
	@property final static AnimNotify_ViewShake DefaultProperties() { mixin(MGDPC!(AnimNotify_ViewShake, "AnimNotify_ViewShake Engine.Default__AnimNotify_ViewShake")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { mixin(MGF!("mNotify", "Function Engine.AnimNotify_ViewShake.Notify")()); }
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'ShakeParams' has the same name as a defined type!
			ScriptName BoneName() { mixin(MGPC!("ScriptName", 132)()); }
			float ShakeRadius() { mixin(MGPC!("float", 128)()); }
			float FOVFrequency() { mixin(MGPC!("float", 120)()); }
			float FOVAmplitude() { mixin(MGPC!("float", 116)()); }
			Vector LocFrequency() { mixin(MGPC!("Vector", 104)()); }
			Vector LocAmplitude() { mixin(MGPC!("Vector", 92)()); }
			Vector RotFrequency() { mixin(MGPC!("Vector", 80)()); }
			Vector RotAmplitude() { mixin(MGPC!("Vector", 68)()); }
			float Duration() { mixin(MGPC!("float", 64)()); }
		}
		bool bUseBoneLocation() { mixin(MGBPC!(124, 0x2)()); }
		bool bUseBoneLocation(bool val) { mixin(MSBPC!(124, 0x2)()); }
		bool bDoControllerVibration() { mixin(MGBPC!(124, 0x1)()); }
		bool bDoControllerVibration(bool val) { mixin(MSBPC!(124, 0x1)()); }
	}
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
}
