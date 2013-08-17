module UnrealScript.Engine.AnimNotify_Scripted;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Scripted : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNotify_Scripted")); }
	private static __gshared AnimNotify_Scripted mDefaultProperties;
	@property final static AnimNotify_Scripted DefaultProperties() { mixin(MGDPC("AnimNotify_Scripted", "AnimNotify_Scripted Engine.Default__AnimNotify_Scripted")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mNotify;
			ScriptFunction mNotifyEnd;
		}
		public @property static final
		{
			ScriptFunction Notify() { mixin(MGF("mNotify", "Function Engine.AnimNotify_Scripted.Notify")); }
			ScriptFunction NotifyEnd() { mixin(MGF("mNotifyEnd", "Function Engine.AnimNotify_Scripted.NotifyEnd")); }
		}
	}
final:
	void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
	void NotifyEnd(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyEnd, params.ptr, cast(void*)0);
	}
}
