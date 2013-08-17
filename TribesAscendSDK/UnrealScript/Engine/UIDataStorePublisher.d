module UnrealScript.Engine.UIDataStorePublisher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStoreSubscriber;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStorePublisher : UIDataStoreSubscriber
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStorePublisher")()); }
	private static __gshared UIDataStorePublisher mDefaultProperties;
	@property final static UIDataStorePublisher DefaultProperties() { mixin(MGDPC!(UIDataStorePublisher, "UIDataStorePublisher Engine.Default__UIDataStorePublisher")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSaveSubscriberValue;
		public @property static final ScriptFunction SaveSubscriberValue() { mixin(MGF!("mSaveSubscriberValue", "Function Engine.UIDataStorePublisher.SaveSubscriberValue")()); }
	}
	final bool SaveSubscriberValue(ref ScriptArray!(UIDataStore) out_BoundDataStores, int* BindingIndex = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(UIDataStore)*)params.ptr = out_BoundDataStores;
		if (BindingIndex !is null)
			*cast(int*)&params[12] = *BindingIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveSubscriberValue, params.ptr, cast(void*)0);
		out_BoundDataStores = *cast(ScriptArray!(UIDataStore)*)params.ptr;
		return *cast(bool*)&params[16];
	}
}
