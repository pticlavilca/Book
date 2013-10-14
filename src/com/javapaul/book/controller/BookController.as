/**
 * Created with IntelliJ IDEA.
 * User: Paul
 * Date: 14/10/13
 * Time: 04:10 PM
 * To change this template use File | Settings | File Templates.
 */
package com.javapaul.book.controller {
import com.javapaul.book.*;

import flash.display.MovieClip;

public class BookController extends MovieClip implements  IBookController {
    private var background:MovieClip;
    private var title:MovieClip;

    public function BookController(_background:MovieClip, _title:MovieClip) {
        this.background = _background;
        this.title = _title;

    }
}
}
