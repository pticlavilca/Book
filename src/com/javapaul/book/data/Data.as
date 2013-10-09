/**
 * Created with IntelliJ IDEA.
 * User: Halion
 * Date: 08/10/13
 * Time: 06:08 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.book.data {

import com.javapaul.book.model.Activity;
import com.javapaul.book.model.Book;
import com.javapaul.book.model.Chapter;

import com.javapaul.load.LoadXML;
import com.javapaul.load.LoadXMLEvent;


import flash.events.EventDispatcher;

public class Data extends EventDispatcher{

    private var loadXML:LoadXML;

    public function Data() {
        super();
    }

    public function loadData(url:String):void{

        loadXML = new LoadXML(url);
        loadXML.addEventListener(LoadXMLEvent.LOAD_COMPLETE, completeLoad);

    }

    private function completeLoad(event:LoadXMLEvent):void {


        var _book:Book = new Book();
        _book.title = event.xml.title;
        _book.author = event.xml.author;
        _book.description = event.xml.description;


        var chapterVector:Vector.<Chapter> = new Vector.<Chapter>();

        for(var i:Number =0 ; i < event.xml.chapter.length(); i++){
            var chapter:Chapter = new Chapter();
            chapter.title = event.xml.chapter[i].@title;
            chapter.description = event.xml.chapter[i].description;

            var activityVector:Vector.<Activity> = new Vector.<Activity>();
            for(var u:Number = 0; u < event.xml.chapter[i].activities.activity.length(); u++){


                var activity:Activity = new Activity();
                activity.title = event.xml.chapter[i].activities.activity[u].@title;
                activity.statement = event.xml.chapter[i].activities.activity[u].statement;
                activity.time = event.xml.chapter[i].activities.activity[u].@time;

                activityVector.push(activity);

            }
            chapter.activity = activityVector;

            chapterVector.push(chapter);

        }

        _book.chapter = chapterVector;

        this.dispatchEvent(new CompleteLoadDataEvent(CompleteLoadDataEvent.COMPLETE_LOAD, _book));
    }
}
}
