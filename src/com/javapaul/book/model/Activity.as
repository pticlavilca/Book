
package com.javapaul.book.model {
public class Activity {

    private var _title:String;
    private var _statement:String;
    private var _time:Number;
    private var _score:String;
    private var _isComplete:Boolean = false;
    private var _url:String;

    public function Activity() {

    }

    public function get title():String {
        return _title;
    }

    public function set title(value:String):void {
        _title = value;
    }

    public function get statement():String {
        return _statement;
    }

    public function set statement(value:String):void {
        _statement = value;
    }

    public function get time():Number {
        return _time;
    }

    public function set time(value:Number):void {
        _time = value;
    }

    public function get score():String {
        return _score;
    }

    public function set score(value:String):void {
        _score = value;
    }

    public function get isComplete():Boolean {
        return _isComplete;
    }

    public function set isComplete(value:Boolean):void {
        _isComplete = value;
    }

    public function get url():String {
        return _url;
    }

    public function set url(value:String):void {
        _url = value;
    }
}
}
