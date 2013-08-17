module UnrealScript.Engine.ActorComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.Component;

extern(C++) interface ActorComponent : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorComponent")()); }
	private static __gshared ActorComponent mDefaultProperties;
	@property final static ActorComponent DefaultProperties() { mixin(MGDPC!(ActorComponent, "ActorComponent Engine.Default__ActorComponent")()); }
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
			ScriptFunction SetTickGroup() { mixin(MGF!("mSetTickGroup", "Function Engine.ActorComponent.SetTickGroup")()); }
			ScriptFunction SetComponentRBFixed() { mixin(MGF!("mSetComponentRBFixed", "Function Engine.ActorComponent.SetComponentRBFixed")()); }
			ScriptFunction ForceUpdate() { mixin(MGF!("mForceUpdate", "Function Engine.ActorComponent.ForceUpdate")()); }
			ScriptFunction DetachFromAny() { mixin(MGF!("mDetachFromAny", "Function Engine.ActorComponent.DetachFromAny")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.ETickingGroup TickGroup() { mixin(MGPC!(UObject.ETickingGroup, 84)()); }
			Actor Owner() { mixin(MGPC!(Actor, 76)()); }
			// WARNING: Property 'Scene' has the same name as a defined type!
		}
		bool bNeedsUpdateTransform() { mixin(MGBPC!(80, 0x8)()); }
		bool bNeedsUpdateTransform(bool val) { mixin(MSBPC!(80, 0x8)()); }
		bool bNeedsReattach() { mixin(MGBPC!(80, 0x4)()); }
		bool bNeedsReattach(bool val) { mixin(MSBPC!(80, 0x4)()); }
		bool bTickInEditor() { mixin(MGBPC!(80, 0x2)()); }
		bool bTickInEditor(bool val) { mixin(MSBPC!(80, 0x2)()); }
		bool bAttached() { mixin(MGBPC!(80, 0x1)()); }
		bool bAttached(bool val) { mixin(MSBPC!(80, 0x1)()); }
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
