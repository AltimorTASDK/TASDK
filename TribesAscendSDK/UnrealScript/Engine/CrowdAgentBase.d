module UnrealScript.Engine.CrowdAgentBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface CrowdAgentBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CrowdAgentBase")); }
	private static __gshared CrowdAgentBase mDefaultProperties;
	@property final static CrowdAgentBase DefaultProperties() { mixin(MGDPC("CrowdAgentBase", "CrowdAgentBase Engine.Default__CrowdAgentBase")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotifyPathChanged;
		public @property static final ScriptFunction NotifyPathChanged() { mixin(MGF("mNotifyPathChanged", "Function Engine.CrowdAgentBase.NotifyPathChanged")); }
	}
	@property final auto ref Pointer VfTable_IInterface_NavigationHandle() { mixin(MGPC("Pointer", 476)); }
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
}
