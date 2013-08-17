module UnrealScript.Engine.ApexAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ApexAsset : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexAsset")()); }
	private static __gshared ApexAsset mDefaultProperties;
	@property final static ApexAsset DefaultProperties() { mixin(MGDPC!(ApexAsset, "ApexAsset Engine.Default__ApexAsset")()); }
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ApexComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 72)()); }
		ScriptArray!(ApexAsset) NamedReferences() { mixin(MGPC!(ScriptArray!(ApexAsset), 84)()); }
		ScriptString SourceFilePath() { mixin(MGPC!(ScriptString, 96)()); }
		ScriptString OriginalApexName() { mixin(MGPC!(ScriptString, 60)()); }
	}
}
