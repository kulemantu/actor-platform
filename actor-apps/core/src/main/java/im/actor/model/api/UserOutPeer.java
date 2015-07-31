package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

public class UserOutPeer extends BserObject {

    private int uid;
    private long accessHash;

    public UserOutPeer(int uid, long accessHash) {
        this.uid = uid;
        this.accessHash = accessHash;
    }

    public UserOutPeer() {

    }

    public int getUid() {
        return this.uid;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.uid = values.getInt(1);
        this.accessHash = values.getLong(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.uid);
        writer.writeLong(2, this.accessHash);
    }

    @Override
    public String toString() {
        String res = "struct UserOutPeer{";
        res += "uid=" + this.uid;
        res += "}";
        return res;
    }

}
