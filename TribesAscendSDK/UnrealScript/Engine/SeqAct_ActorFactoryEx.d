module UnrealScript.Engine.SeqAct_ActorFactoryEx;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_ActorFactory;

extern(C++) interface SeqAct_ActorFactoryEx : SeqAct_ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ActorFactoryEx")); }
	private static __gshared SeqAct_ActorFactoryEx mDefaultProperties;
	@property final static SeqAct_ActorFactoryEx DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ActorFactoryEx)("SeqAct_ActorFactoryEx Engine.Default__SeqAct_ActorFactoryEx")); }
}
