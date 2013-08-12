module UnrealScript.Engine.ActorComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.Component;

extern(C++) interface ActorComponent : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorComponent")); }
	private static __gshared ActorComponent mDefaultProperties;
	@property final static ActorComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorComponent)("ActorComponent Engine.Default__ActorComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTickGroup;
			ScriptFunction mSetComponentRBFixed;
			ScriptFunction mForceUpdate;
			ScriptFunction mDetachFromAny;
		}
		public @property static final
		{
			ScriptFunction SetTickGroup() { return mSetTickGroup ? mSetTickGroup : (mSetTickGroup = ScriptObject.Find!(ScriptFunction)("Function Engine.ActorComponent.SetTickGroup")); }
			ScriptFunction SetComponentRBFixed() { return mSetComponentRBFixed ? mSetComponentRBFixed : (mSetComponentRBFixed = ScriptObject.Find!(ScriptFunction)("Function Engine.ActorComponent.SetComponentRBFixed")); }
			ScriptFunction ForceUpdate() { return mForceUpdate ? mForceUpdate : (mForceUpdate = ScriptObject.Find!(ScriptFunction)("Function Engine.ActorComponent.ForceUpdate")); }
			ScriptFunction DetachFromAny() { return mDetachFromAny ? mDetachFromAny : (mDetachFromAny = ScriptObject.Find!(ScriptFunction)("Function Engine.ActorComponent.DetachFromAny")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.ETickingGroup TickGroup() { return *cast(UObject.ETickingGroup*)(cast(size_t)cast(void*)this + 84); }
			Actor Owner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 76); }
			// WARNING: Property 'Scene' has the same name as a defined type!
		}
		bool bNeedsUpdateTransform() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x8) != 0; }
		bool bNeedsUpdateTransform(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x8; } return val; }
		bool bNeedsReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x4) != 0; }
		bool bNeedsReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x4; } return val; }
		bool bTickInEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x2) != 0; }
		bool bTickInEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x2; } return val; }
		bool bAttached() { return (*cast(uint*)(cast(size_t)cast(void*)this + 80) & 0x1) != 0; }
		bool bAttached(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 80) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 80) &= ~0x1; } return val; }
	}
final:
	void SetTickGroup(UObject.ETickingGroup NewTickGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UObject.ETickingGroup*)params.ptr = NewTickGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTickGroup, params.ptr, cast(void*)0);
	}
	void SetComponentRBFixed(bool bFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFixed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetComponentRBFixed, params.ptr, cast(void*)0);
	}
	void ForceUpdate(bool bTransformOnly)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bTransformOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceUpdate, params.ptr, cast(void*)0);
	}
	void DetachFromAny()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachFromAny, cast(void*)0, cast(void*)0);
	}
}
