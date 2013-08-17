module UnrealScript.Engine.SeqAct_SetBlockRigidBody;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetBlockRigidBody : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetBlockRigidBody")); }
	private static __gshared SeqAct_SetBlockRigidBody mDefaultProperties;
	@property final static SeqAct_SetBlockRigidBody DefaultProperties() { mixin(MGDPC("SeqAct_SetBlockRigidBody", "SeqAct_SetBlockRigidBody Engine.Default__SeqAct_SetBlockRigidBody")); }
}
