module UnrealScript.Engine.AnimNotify;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNotify : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNotify")()); }
	private static __gshared AnimNotify mDefaultProperties;
	@property final static AnimNotify DefaultProperties() { mixin(MGDPC!(AnimNotify, "AnimNotify Engine.Default__AnimNotify")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindNextNotifyOfClass;
		public @property static final ScriptFunction FindNextNotifyOfClass() { mixin(MGF!("mFindNextNotifyOfClass", "Function Engine.AnimNotify.FindNextNotifyOfClass")()); }
	}
	@property final auto ref UObject.Color NotifyColor() { mixin(MGPC!("UObject.Color", 60)()); }
	final bool FindNextNotifyOfClass(AnimNodeSequence AnimSeqInstigator, ScriptClass NotifyClass, ref AnimSequence.AnimNotifyEvent OutEvent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = AnimSeqInstigator;
		*cast(ScriptClass*)&params[4] = NotifyClass;
		*cast(AnimSequence.AnimNotifyEvent*)&params[8] = OutEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNextNotifyOfClass, params.ptr, cast(void*)0);
		OutEvent = *cast(AnimSequence.AnimNotifyEvent*)&params[8];
		return *cast(bool*)&params[28];
	}
}
