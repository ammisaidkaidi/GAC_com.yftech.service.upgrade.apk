package com.yftech.service.upgrade.g;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public class d {
    public static Map<String, File> a(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            b.e("findUpgradeFile, pathList is empty");
            return new HashMap(0);
        }
        if (strArr2 == null || strArr2.length == 0) {
            b.e("findUpgradeFile, upgradeFileNames is empty");
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            File file = new File(str);
            if (!file.exists()) {
                b.e("findUpgradeFile, path(" + str + ") not exists");
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null || listFiles.length == 0) {
                    b.e("findUpgradeFile, directory(" + str + ") is empty");
                } else {
                    for (File file2 : listFiles) {
                        if (file2.isFile()) {
                            int length = strArr2.length;
                            int i = 0;
                            while (true) {
                                if (i < length) {
                                    String str2 = strArr2[i];
                                    if (str2.equals(file2.getName())) {
                                        hashMap.put(str2, file2);
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                    }
                }
            } else {
                b.e("findUpgradeFile, path(" + str + ") is not directory");
            }
        }
        return hashMap;
    }
}
