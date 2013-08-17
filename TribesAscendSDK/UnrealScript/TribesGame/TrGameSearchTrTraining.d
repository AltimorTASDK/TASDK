module UnrealScript.TribesGame.TrGameSearchTrTraining;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrTraining : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSearchTrTraining")()); }
	private static __gshared TrGameSearchTrTraining mDefaultProperties;
	@property final static TrGameSearchTrTraining DefaultProperties() { mixin(MGDPC!(TrGameSearchTrTraining, "TrGameSearchTrTraining TribesGame.Default__TrGameSearchTrTraining")()); }
}
