/**
 * Created with IntelliJ IDEA.
 * User: Halion
 * Date: 08/10/13
 * Time: 07:52 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.book.data {
import com.javapaul.book.model.Book;

import flash.events.Event;

public class CompleteLoadDataEvent extends Event{
    public static const COMPLETE_LOAD:String = "COMPLETE_LOAD";
    public var book:Book;

    public function CompleteLoadDataEvent(type:String, _book:Book) {
        super(type);
        this.book = _book;
    }
}
}
