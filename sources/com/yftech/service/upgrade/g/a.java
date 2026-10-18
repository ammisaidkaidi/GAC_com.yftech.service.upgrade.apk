package com.yftech.service.upgrade.g;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final InterfaceC0100a f1596a;
    private long b;
    private long c;
    private boolean d;

    /* renamed from: com.yftech.service.upgrade.g.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface InterfaceC0100a {
        void a(int i);
    }

    private a(InterfaceC0100a interfaceC0100a) {
        this.f1596a = interfaceC0100a;
    }

    private int a(File file) {
        if (!file.isDirectory()) {
            return 0;
        }
        int i = 0;
        for (File file2 : file.listFiles()) {
            i = file2.isDirectory() ? i + a(file2) : i + 1;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00dd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x00c3 -> B:57:0x00db). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(File file, File file2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        boolean z = false;
        if (!file.exists() || file.isDirectory() || (file2.exists() && !file2.isDirectory())) {
            return false;
        }
        if (!file2.exists() && !file2.mkdirs()) {
            return false;
        }
        File file3 = new File(file2.getPath(), file.getName());
        if (file3.exists()) {
            file3.delete();
        }
        byte[] bArr = new byte[1048576];
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileOutputStream = new FileOutputStream(file3);
                        while (true) {
                            try {
                                int read = fileInputStream.read(bArr);
                                if (read != -1) {
                                    fileOutputStream.write(bArr, 0, read);
                                    if (this.d) {
                                        this.c += read;
                                        if (this.f1596a != null) {
                                            if (this.c >= this.b) {
                                                this.f1596a.a(100);
                                            } else {
                                                this.f1596a.a((int) ((this.c * 100) / this.b));
                                            }
                                        }
                                    }
                                } else {
                                    try {
                                        break;
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                            } catch (FileNotFoundException e2) {
                                e = e2;
                                fileInputStream2 = fileInputStream;
                                e.printStackTrace();
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e3) {
                                        e3.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (z) {
                                }
                                return z;
                            } catch (IOException e4) {
                                e = e4;
                                fileInputStream2 = fileInputStream;
                                e.printStackTrace();
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (z) {
                                }
                                return z;
                            } catch (Throwable th) {
                                th = th;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                if (fileOutputStream == null) {
                                    throw th;
                                }
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                    throw th;
                                }
                            }
                        }
                        fileInputStream.close();
                        try {
                            fileOutputStream.close();
                        } catch (IOException e8) {
                            e8.printStackTrace();
                        }
                        z = true;
                    } catch (FileNotFoundException e9) {
                        e = e9;
                        fileOutputStream = null;
                    } catch (IOException e10) {
                        e = e10;
                        fileOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                }
            } catch (FileNotFoundException e11) {
                e = e11;
                fileOutputStream = null;
            } catch (IOException e12) {
                e = e12;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                fileOutputStream = null;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
        if (z) {
            file3.setReadable(file.canRead());
            file3.setWritable(file.canWrite());
            file3.setExecutable(file2.canExecute());
        }
        return z;
    }

    private boolean b(File file, File file2) {
        if (!file.exists() || !file.isDirectory() || (file2.exists() && !file2.isDirectory())) {
            return false;
        }
        if (!file2.exists() && !file2.mkdirs()) {
            return false;
        }
        File file3 = new File(file2.getPath(), file.getName());
        if ((file3.exists() && !file3.delete()) || !file3.mkdir()) {
            return false;
        }
        file3.setReadable(file.canRead());
        file3.setWritable(file.canWrite());
        file3.setExecutable(file.canExecute());
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return true;
        }
        for (File file4 : listFiles) {
            if (file4.isDirectory()) {
                if (!b(file4, file3)) {
                    return false;
                }
            } else {
                if (!a(file4, file3)) {
                    return false;
                }
                if (!this.d) {
                    this.c++;
                    if (this.f1596a != null) {
                        if (this.c >= this.b) {
                            this.f1596a.a(100);
                        } else {
                            this.f1596a.a((int) ((this.c * 100) / this.b));
                        }
                    }
                }
            }
        }
        return true;
    }

    private boolean c(File file, File file2) {
        if (file == null || !file.exists() || file2 == null) {
            return false;
        }
        if (file.isDirectory()) {
            this.d = false;
            this.b = a(file);
            this.c = 0L;
            boolean b = b(file, file2);
            if (b && this.b == 0 && this.f1596a != null) {
                this.f1596a.a(100);
            }
            return b;
        }
        this.d = true;
        this.b = file.length();
        this.c = 0L;
        return a(file, file2);
    }

    private boolean a(File[] fileArr, File file) {
        if (fileArr == null || file == null || (file.exists() && !file.isDirectory())) {
            return false;
        }
        if (fileArr.length == 0) {
            return true;
        }
        for (File file2 : fileArr) {
            if (file2 != null) {
                if (!file2.exists() || file2.isDirectory()) {
                    return false;
                }
                this.b += file2.length();
            }
        }
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        this.c = 0L;
        this.d = true;
        for (File file3 : fileArr) {
            if (file3 != null && !a(file3, file)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(File file, File file2, InterfaceC0100a interfaceC0100a) {
        return new a(interfaceC0100a).c(file, file2);
    }

    public static boolean a(File[] fileArr, File file, InterfaceC0100a interfaceC0100a) {
        return new a(interfaceC0100a).a(fileArr, file);
    }
}
