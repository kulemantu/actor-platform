package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;

public class Interest extends BserObject {

    private int id;
    private String title;
    private boolean isSelected;
    private List<Interest> childInterests;

    public Interest(int id, String title, boolean isSelected, List<Interest> childInterests) {
        this.id = id;
        this.title = title;
        this.isSelected = isSelected;
        this.childInterests = childInterests;
    }

    public Interest() {

    }

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public List<Interest> getChildInterests() {
        return this.childInterests;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.id = values.getInt(1);
        this.title = values.getString(2);
        this.isSelected = values.getBool(4);
        List<Interest> _childInterests = new ArrayList<Interest>();
        for (int i = 0; i < values.getRepeatedCount(3); i ++) {
            _childInterests.add(new Interest());
        }
        this.childInterests = values.getRepeatedObj(3, _childInterests);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.id);
        if (this.title == null) {
            throw new IOException();
        }
        writer.writeString(2, this.title);
        writer.writeBool(4, this.isSelected);
        writer.writeRepeatedObj(3, this.childInterests);
    }

    @Override
    public String toString() {
        String res = "struct Interest{";
        res += "id=" + this.id;
        res += ", title=" + this.title;
        res += ", childInterests=" + this.childInterests;
        res += "}";
        return res;
    }

}
