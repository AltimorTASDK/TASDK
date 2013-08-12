module UnrealScript.Engine.UIDataStorePublisher;

import ScriptClasses;
import UnrealScript.Engine.UIDataStoreSubscriber;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStorePublisher : UIDataStoreSubscriber
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStorePublisher")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSaveSubscriberValue;
		public @property static final ScriptFunction SaveSubscriberValue() { return mSaveSubscriberValue ? mSaveSubscriberValue : (mSaveSubscriberValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStorePublisher.SaveSubscriberValue")); }
	}
	final bool SaveSubscriberValue(ScriptArray!(UIDataStore)* out_BoundDataStores, int BindingIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = *out_BoundDataStores;
		*cast(int*)&params[12] = BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveSubscriberValue, params.ptr, cast(void*)0);
		*out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
		return *cast(bool*)&params[16];
	}
}
