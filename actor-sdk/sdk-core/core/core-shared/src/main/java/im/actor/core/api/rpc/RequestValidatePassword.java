package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import im.actor.core.api.*;

public class RequestValidatePassword extends Request<ResponseAuth> {

    public static final int HEADER = 0xcf;
    public static RequestValidatePassword fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestValidatePassword(), data);
    }

    private String transactionHash;
    private String password;

    public RequestValidatePassword(@NotNull String transactionHash, @NotNull String password) {
        this.transactionHash = transactionHash;
        this.password = password;
    }

    public RequestValidatePassword() {

    }

    @NotNull
    public String getTransactionHash() {
        return this.transactionHash;
    }

    @NotNull
    public String getPassword() {
        return this.password;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.transactionHash = values.getString(1);
        this.password = values.getString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.transactionHash == null) {
            throw new IOException();
        }
        writer.writeString(1, this.transactionHash);
        if (this.password == null) {
            throw new IOException();
        }
        writer.writeString(2, this.password);
    }

    @Override
    public String toString() {
        String res = "rpc ValidatePassword{";
        res += "transactionHash=" + this.transactionHash;
        res += ", password=" + this.password;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}