module UnrealScript.Engine.UIDynamicDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIPropertyDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UIDynamicDataProvider : UIPropertyDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDynamicDataProvider")); }
	private static __gshared UIDynamicDataProvider mDefaultProperties;
	@property final static UIDynamicDataProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDynamicDataProvider)("UIDynamicDataProvider Engine.Default__UIDynamicDataProvider")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBindProviderInstance;
			ScriptFunction mUnbindProviderInstance;
			ScriptFunction mProviderInstanceBound;
			ScriptFunction mProviderInstanceUnbound;
			ScriptFunction mIsValidDataSourceClass;
			ScriptFunction mGetDataSource;
			ScriptFunction mCleanupDataProvider;
		}
		public @property static final
		{
			ScriptFunction BindProviderInstance() { return mBindProviderInstance ? mBindProviderInstance : (mBindProviderInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.BindProviderInstance")); }
			ScriptFunction UnbindProviderInstance() { return mUnbindProviderInstance ? mUnbindProviderInstance : (mUnbindProviderInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.UnbindProviderInstance")); }
			ScriptFunction ProviderInstanceBound() { return mProviderInstanceBound ? mProviderInstanceBound : (mProviderInstanceBound = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.ProviderInstanceBound")); }
			ScriptFunction ProviderInstanceUnbound() { return mProviderInstanceUnbound ? mProviderInstanceUnbound : (mProviderInstanceUnbound = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.ProviderInstanceUnbound")); }
			ScriptFunction IsValidDataSourceClass() { return mIsValidDataSourceClass ? mIsValidDataSourceClass : (mIsValidDataSourceClass = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.IsValidDataSourceClass")); }
			ScriptFunction GetDataSource() { return mGetDataSource ? mGetDataSource : (mGetDataSource = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.GetDataSource")); }
			ScriptFunction CleanupDataProvider() { return mCleanupDataProvider ? mCleanupDataProvider : (mCleanupDataProvider = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicDataProvider.CleanupDataProvider")); }
		}
	}
	@property final auto ref
	{
		UObject DataSource() { return *cast(UObject*)(cast(size_t)cast(void*)this + 120); }
		ScriptClass DataClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 116); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
	}
final:
	bool BindProviderInstance(UObject DataSourceInstance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.BindProviderInstance, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool UnbindProviderInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnbindProviderInstance, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ProviderInstanceBound(UObject DataSourceInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProviderInstanceBound, params.ptr, cast(void*)0);
	}
	void ProviderInstanceUnbound(UObject DataSourceInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProviderInstanceUnbound, params.ptr, cast(void*)0);
	}
	bool IsValidDataSourceClass(ScriptClass PotentialDataSourceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = PotentialDataSourceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDataSourceClass, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	UObject GetDataSource()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDataSource, params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	bool CleanupDataProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanupDataProvider, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
