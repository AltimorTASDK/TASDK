module UnrealScript.Engine.CrowdAgentBase;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface CrowdAgentBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CrowdAgentBase")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotifyPathChanged;
		public @property static final ScriptFunction NotifyPathChanged() { return mNotifyPathChanged ? mNotifyPathChanged : (mNotifyPathChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.CrowdAgentBase.NotifyPathChanged")); }
	}
	@property final auto ref UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
}
