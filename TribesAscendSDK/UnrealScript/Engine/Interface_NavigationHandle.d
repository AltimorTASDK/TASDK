module UnrealScript.Engine.Interface_NavigationHandle;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavigationHandle : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Interface_NavigationHandle")); }
	private static __gshared Interface_NavigationHandle mDefaultProperties;
	@property final static Interface_NavigationHandle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Interface_NavigationHandle)("Interface_NavigationHandle Engine.Default__Interface_NavigationHandle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotifyPathChanged;
		public @property static final ScriptFunction NotifyPathChanged() { return mNotifyPathChanged ? mNotifyPathChanged : (mNotifyPathChanged = ScriptObject.Find!(ScriptFunction)("Function Engine.Interface_NavigationHandle.NotifyPathChanged")); }
	}
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPathChanged, cast(void*)0, cast(void*)0);
	}
}
