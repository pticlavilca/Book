/**
 * Created with IntelliJ IDEA.
 * User: Halion
 * Date: 08/10/13
 * Time: 05:07 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.book.model {


public class Book{

    private var _author:String;
    private var _title:String;
    private var _description:String;
    private var _chapter:Vector.<Chapter>;


    public function Book () {
    }


    public function get author():String {
        return _author;
    }

    public function set author(value:String):void {
        _author = value;
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

    public function set chapter(value:Vector.<Chapter>){
        this._chapter = value;
    }

    public function get chapter():Vector.<Chapter>{
        return this._chapter;
    }




}
}
