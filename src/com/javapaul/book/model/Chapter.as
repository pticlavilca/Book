/**
 * Created with IntelliJ IDEA.
 * User: Halion
 * Date: 08/10/13
 * Time: 04:42 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.book.model {
public class Chapter {
    private var _title:String;
    private var _description:String;
    private var _activity:Vector.<Activity>;
    private var _isCompleted:Boolean = false;

    public function Chapter() {

    }

    public function get title():String {
        return _title;
    }

    public function set title(value:String):void {
        _title = value;
    }

    public function get description():String {
        return _description;
    }

    public function set description(value:String):void {
        _description = value;
    }

    public function get activity():Vector.<Activity> {
        return _activity;
    }

    public function set activity(value:Vector.<Activity>):void {
        _activity = value;
    }


    public function get isCompleted():Boolean {
        return _isCompleted;
    }

    public function set isCompleted(value:Boolean):void {
        _isCompleted = value;
    }
}
}
