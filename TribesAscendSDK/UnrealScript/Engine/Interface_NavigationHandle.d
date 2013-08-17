module UnrealScript.Engine.Interface_NavigationHandle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavigationHandle : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Interface_NavigationHandle")); }
	private static __gshared Interface_NavigationHandle mDefaultProperties;
	@property final static Interface_NavigationHandle DefaultProperties() { mixin(MGDPC("Interface_NavigationHandle", "Interface_NavigationHandle Engine.Default__Interface_NavigationHandle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotifyPathChanged;
		public @property static final ScriptFunction NotifyPathChanged() { mixin(MGF("mNotifyPathChanged", "Function Engine.Interface_NavigationHandle.NotifyPathChanged")); }
	}
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
}
