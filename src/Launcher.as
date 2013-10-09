package {

import com.javapaul.book.data.CompleteLoadDataEvent;
import com.javapaul.book.data.Data;
import com.javapaul.book.model.Book;
import flash.display.Sprite;

public class Launcher extends Sprite {
    private var book:Book;
    public function Launcher() {

        var data:Data = new Data();
        data.addEventListener(CompleteLoadDataEvent.COMPLETE_LOAD, handlerCompleteLoad);
        data.loadData("book.cfg.xml");

    }

    private function handlerCompleteLoad(event:CompleteLoadDataEvent):void {
        trace(event.book.chapter[1].activity[1].title);
    }
}
}
