package com.yftech.service.upgrade;

import androidx.annotation.ah;
import androidx.annotation.ai;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface b {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(b bVar, int i);

        void b(b bVar, int i);
    }

    int a();

    void a(a aVar);

    void a(@ah FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr);

    boolean a(String[] strArr);

    boolean b(String[] strArr);
}
