package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;

import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import im.actor.model.network.parser.*;
import im.actor.model.api.*;

public class RequestGetFileUrl extends Request<ResponseGetFileUrl> {

    public static final int HEADER = 0x4d;
    public static RequestGetFileUrl fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestGetFileUrl(), data);
    }

    private FileLocation file;

    public RequestGetFileUrl(@NotNull FileLocation file) {
        this.file = file;
    }

    public RequestGetFileUrl() {

    }

    @NotNull
    public FileLocation getFile() {
        return this.file;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.file = values.getObj(1, new FileLocation());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.file == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.file);
    }

    @Override
    public String toString() {
        String res = "rpc GetFileUrl{";
        res += "file=" + this.file;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
