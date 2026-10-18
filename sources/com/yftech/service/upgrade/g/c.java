package com.yftech.service.upgrade.g;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: /home/user/work/dex/classes.dex */
public class c {
    private String a(String str) {
        return c(b(str));
    }

    private String b(String str) {
        if (str == null) {
            b.e("decodeBase64, base64Str is null !");
            return null;
        }
        try {
            return new String(new a.a.a().a(str));
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String c(String str) {
        char[] cArr = {'y', 'f', '2', '0', '1', '8', '5', '9', '7', '3', '4', '6', 'w', 'm'};
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        if (str == null) {
            b.e("decodeXOR, strEncrypt is null !");
            return null;
        }
        for (int i = 0; i < charArray.length; i++) {
            for (char c : cArr) {
                charArray[i] = (char) (charArray[i] ^ c);
            }
        }
        stringBuffer.append(charArray);
        return stringBuffer.toString();
    }

    private String d(String str) {
        MessageDigest messageDigest;
        byte[] bArr;
        try {
            bArr = new byte[8192];
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (IOException e) {
            e = e;
            messageDigest = null;
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            messageDigest = null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            fileInputStream.close();
        } catch (IOException e3) {
            e = e3;
            e.printStackTrace();
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e4) {
            e = e4;
            e.printStackTrace();
            return a(messageDigest.digest());
        }
        return a(messageDigest.digest());
    }

    private String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(com.yftech.service.upgrade.a.d);
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.yftech.service.upgrade.g.c] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String c(File file, File file2) {
        if (file != null && file.exists() && file2 != 0) {
            ?? e = file2.exists();
            try {
                try {
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                }
                if (e != 0) {
                    try {
                        e = new BufferedReader(new FileReader((File) file2));
                        try {
                            file2 = e.readLine();
                        } catch (IOException e3) {
                            e = e3;
                            file2 = 0;
                        }
                        try {
                            b.c("compareCrypto, md5File md5:" + file2);
                            e.close();
                            e = e;
                            file2 = file2;
                        } catch (IOException e4) {
                            e = e4;
                            e.printStackTrace();
                            if (e != 0) {
                                e.close();
                                e = e;
                                file2 = file2;
                            }
                            if (file2 != 0) {
                            }
                        }
                    } catch (IOException e5) {
                        e = e5;
                        file2 = 0;
                        e = 0;
                    } catch (Throwable th) {
                        th = th;
                        e = 0;
                        if (e != 0) {
                            try {
                                e.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    if (file2 != 0) {
                        return null;
                    }
                    String lowerCase = a(file2).toLowerCase();
                    String d = d(file.getPath());
                    String lowerCase2 = d == null ? null : d.toLowerCase();
                    b.c("compareCrypto, getMd5FormCrypto:" + lowerCase + ", fileMd5:" + lowerCase2);
                    if (lowerCase.equals(lowerCase2)) {
                        return lowerCase2;
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        b.e("compareCrypto, file is null or not exists");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String d(File file, File file2) {
        Throwable th;
        if (file != null && file.exists() && file2 != 0) {
            try {
            } catch (IOException e) {
                e = e;
                e.printStackTrace();
            }
            if (file2.exists()) {
                try {
                    e = new BufferedReader(new FileReader((File) file2));
                    try {
                        try {
                            file2 = e.readLine();
                        } catch (IOException e2) {
                            e = e2;
                            file2 = 0;
                        }
                        try {
                            b.c("compareStandard, md5File md5:" + file2);
                            e.close();
                            e = e;
                            file2 = file2;
                        } catch (IOException e3) {
                            e = e3;
                            e.printStackTrace();
                            if (e != 0) {
                                e.close();
                                e = e;
                                file2 = file2;
                            }
                            if (file2 != 0) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (e != 0) {
                            try {
                                e.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e5) {
                    e = e5;
                    file2 = 0;
                    e = 0;
                } catch (Throwable th3) {
                    th = th3;
                    e = 0;
                    if (e != 0) {
                    }
                    throw th;
                }
                if (file2 != 0) {
                    return null;
                }
                String lowerCase = file2.toLowerCase();
                String d = d(file.getPath());
                String lowerCase2 = d == null ? null : d.toLowerCase();
                b.c("compareStandard, getMd5FormCrypto:" + lowerCase + ", fileMd5:" + lowerCase2);
                if (lowerCase.equals(lowerCase2)) {
                    return lowerCase2;
                }
                return null;
            }
        }
        b.e("compareStandard, file is null or not exists");
        return null;
    }

    public static String a(File file, File file2) {
        return new c().c(file, file2);
    }

    public static String b(File file, File file2) {
        return new c().d(file, file2);
    }
}
