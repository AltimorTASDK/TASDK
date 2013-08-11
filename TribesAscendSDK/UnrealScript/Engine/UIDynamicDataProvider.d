module UnrealScript.Engine.UIDynamicDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIPropertyDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UIDynamicDataProvider : UIPropertyDataProvider
{
	public @property final auto ref UObject DataSource() { return *cast(UObject*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptClass DataClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 112); }
	final bool BindProviderInstance(UObject DataSourceInstance)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28389], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool UnbindProviderInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28392], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ProviderInstanceBound(UObject DataSourceInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28394], params.ptr, cast(void*)0);
	}
	final void ProviderInstanceUnbound(UObject DataSourceInstance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UObject*)params.ptr = DataSourceInstance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28396], params.ptr, cast(void*)0);
	}
	final bool IsValidDataSourceClass(ScriptClass PotentialDataSourceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = PotentialDataSourceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28398], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final UObject GetDataSource()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28401], params.ptr, cast(void*)0);
		return *cast(UObject*)params.ptr;
	}
	final bool CleanupDataProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28403], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
