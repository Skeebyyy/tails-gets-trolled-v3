#if android
import extension.webview.WebView;
import android.AndroidTools;
#end
import flixel.FlxBasic;
import flixel.FlxG;

class FlxVideo extends FlxBasic {
	public var finishCallback:Void->Void = null;

	public function new(name:String) {
		super();

	        #if android
                WebView.playVideo(AndroidTools.getFileUrl(name), true);
                WebView.onComplete = function(){
		        if (finishCallback != null){
			        finishCallback();
		        }
                }
		#end
	}	
}
