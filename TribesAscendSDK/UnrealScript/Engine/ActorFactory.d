module UnrealScript.Engine.ActorFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;

extern(C++) interface ActorFactory : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactory")()); }
	private static __gshared ActorFactory mDefaultProperties;
	@property final static ActorFactory DefaultProperties() { mixin(MGDPC!(ActorFactory, "ActorFactory Engine.Default__ActorFactory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF!("mPostCreateActor", "Function Engine.ActorFactory.PostCreateActor")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptClass NewActorClass() { mixin(MGPC!("ScriptClass", 84)()); }
			int AlternateMenuPriority() { mixin(MGPC!("int", 80)()); }
			int MenuPriority() { mixin(MGPC!("int", 76)()); }
			ScriptString MenuName() { mixin(MGPC!("ScriptString", 64)()); }
			ScriptClass GameplayActorClass() { mixin(MGPC!("ScriptClass", 60)()); }
		}
		bool bShowInEditorQuickMenu() { mixin(MGBPC!(88, 0x2)()); }
		bool bShowInEditorQuickMenu(bool val) { mixin(MSBPC!(88, 0x2)()); }
		bool bPlaceable() { mixin(MGBPC!(88, 0x1)()); }
		bool bPlaceable(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
