module UnrealScript.Engine.AnimNotify;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNotify : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify")); }
	private static __gshared AnimNotify mDefaultProperties;
	@property final static AnimNotify DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNotify)("AnimNotify Engine.Default__AnimNotify")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mFindNextNotifyOfClass;
		public @property static final ScriptFunction FindNextNotifyOfClass() { return mFindNextNotifyOfClass ? mFindNextNotifyOfClass : (mFindNextNotifyOfClass = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNotify.FindNextNotifyOfClass")); }
	}
	@property final auto ref UObject.Color NotifyColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 60); }
	final bool FindNextNotifyOfClass(AnimNodeSequence AnimSeqInstigator, ScriptClass NotifyClass, AnimSequence.AnimNotifyEvent* OutEvent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = AnimSeqInstigator;
		*cast(ScriptClass*)&params[4] = NotifyClass;
		*cast(AnimSequence.AnimNotifyEvent*)&params[8] = *OutEvent;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNextNotifyOfClass, params.ptr, cast(void*)0);
		*OutEvent = *cast(AnimSequence.AnimNotifyEvent*)&params[8];
		return *cast(bool*)&params[28];
	}
}
