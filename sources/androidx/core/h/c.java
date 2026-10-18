package androidx.core.h;

import android.net.TrafficStats;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.ah;
import java.net.DatagramSocket;
import java.net.Socket;

/* loaded from: /home/user/work/dex/classes.dex */
public final class c {
    @Deprecated
    public static void a() {
        TrafficStats.clearThreadStatsTag();
    }

    @Deprecated
    public static int b() {
        return TrafficStats.getThreadStatsTag();
    }

    @Deprecated
    public static void a(int i) {
        TrafficStats.incrementOperationCount(i);
    }

    @Deprecated
    public static void a(int i, int i2) {
        TrafficStats.incrementOperationCount(i, i2);
    }

    @Deprecated
    public static void b(int i) {
        TrafficStats.setThreadStatsTag(i);
    }

    @Deprecated
    public static void a(Socket socket) {
        TrafficStats.tagSocket(socket);
    }

    @Deprecated
    public static void b(Socket socket) {
        TrafficStats.untagSocket(socket);
    }

    public static void a(@ah DatagramSocket datagramSocket) {
        if (Build.VERSION.SDK_INT >= 24) {
            TrafficStats.tagDatagramSocket(datagramSocket);
            return;
        }
        ParcelFileDescriptor fromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        TrafficStats.tagSocket(new b(datagramSocket, fromDatagramSocket.getFileDescriptor()));
        fromDatagramSocket.detachFd();
    }

    public static void b(@ah DatagramSocket datagramSocket) {
        if (Build.VERSION.SDK_INT >= 24) {
            TrafficStats.untagDatagramSocket(datagramSocket);
            return;
        }
        ParcelFileDescriptor fromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        TrafficStats.untagSocket(new b(datagramSocket, fromDatagramSocket.getFileDescriptor()));
        fromDatagramSocket.detachFd();
    }

    private c() {
    }
}
