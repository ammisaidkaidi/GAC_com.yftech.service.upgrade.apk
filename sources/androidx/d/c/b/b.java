package androidx.d.c.b;

import androidx.d.c.b.e;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f676a = false;
    private static final boolean b = false;

    public static void a(f fVar, androidx.d.c.e eVar, ArrayList<e> arrayList, int i) {
        int i2;
        int i3;
        c[] cVarArr;
        if (i == 0) {
            int i4 = fVar.bd;
            cVarArr = fVar.bg;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = fVar.be;
            cVarArr = fVar.bf;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            c cVar = cVarArr[i5];
            cVar.i();
            if (arrayList == null || (arrayList != null && arrayList.contains(cVar.f677a))) {
                a(fVar, eVar, i, i2, cVar);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (r2.aN == 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0039, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0053, code lost:
    
        if (r2.aO == 2) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0553 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x059a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:222:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x057a  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void a(f fVar, androidx.d.c.e eVar, int i, int i2, c cVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList<e> arrayList;
        e eVar2;
        e eVar3;
        e eVar4;
        androidx.d.c.i iVar;
        e eVar5;
        e eVar6;
        d dVar;
        d dVar2;
        d dVar3;
        int i3;
        androidx.d.c.e eVar7;
        int i4;
        e eVar8;
        e eVar9;
        e eVar10;
        d dVar4;
        androidx.d.c.i iVar2;
        androidx.d.c.i iVar3;
        e eVar11;
        int i5;
        e eVar12;
        d dVar5;
        androidx.d.c.i iVar4;
        androidx.d.c.i iVar5;
        d dVar6;
        int i6;
        e eVar13;
        e eVar14;
        e eVar15;
        int i7;
        float f;
        int size;
        int i8;
        ArrayList<e> arrayList2;
        int i9;
        e eVar16;
        e eVar17;
        e eVar18;
        int i10;
        e eVar19 = cVar.f677a;
        e eVar20 = cVar.c;
        e eVar21 = cVar.b;
        e eVar22 = cVar.d;
        e eVar23 = cVar.e;
        float f2 = cVar.k;
        e eVar24 = cVar.f;
        e eVar25 = cVar.g;
        boolean z4 = fVar.ak[i] == e.a.WRAP_CONTENT;
        if (i == 0) {
            z = eVar23.aN == 0;
            z2 = eVar23.aN == 1;
        } else {
            z = eVar23.aO == 0;
            z2 = eVar23.aO == 1;
        }
        boolean z5 = z3;
        boolean z6 = z2;
        boolean z7 = z;
        e eVar26 = eVar19;
        boolean z8 = false;
        while (true) {
            e eVar27 = null;
            if (z8) {
                break;
            }
            d dVar7 = eVar26.ag[i2];
            int i11 = z5 ? 1 : 4;
            int j = dVar7.j();
            float f3 = f2;
            boolean z9 = z8;
            boolean z10 = eVar26.ak[i] == e.a.MATCH_CONSTRAINT && eVar26.I[i] == 0;
            if (dVar7.c != null && eVar26 != eVar19) {
                j += dVar7.c.j();
            }
            int i12 = j;
            if (!z5 || eVar26 == eVar19 || eVar26 == eVar21) {
                eVar16 = eVar23;
            } else {
                eVar16 = eVar23;
                i11 = 8;
            }
            if (dVar7.c != null) {
                if (eVar26 == eVar21) {
                    eVar17 = eVar19;
                    eVar18 = eVar21;
                    eVar.a(dVar7.f, dVar7.c.f, i12, 6);
                } else {
                    eVar17 = eVar19;
                    eVar18 = eVar21;
                    eVar.a(dVar7.f, dVar7.c.f, i12, 8);
                }
                eVar.c(dVar7.f, dVar7.c.f, i12, (!z10 || z5) ? i11 : 5);
            } else {
                eVar17 = eVar19;
                eVar18 = eVar21;
            }
            if (z4) {
                if (eVar26.E() == 8 || eVar26.ak[i] != e.a.MATCH_CONSTRAINT) {
                    i10 = 0;
                } else {
                    i10 = 0;
                    eVar.a(eVar26.ag[i2 + 1].f, eVar26.ag[i2].f, 0, 5);
                }
                eVar.a(eVar26.ag[i2].f, fVar.ag[i2].f, i10, 8);
            }
            d dVar8 = eVar26.ag[i2 + 1].c;
            if (dVar8 != null) {
                e eVar28 = dVar8.f678a;
                if (eVar28.ag[i2].c != null && eVar28.ag[i2].c.f678a == eVar26) {
                    eVar27 = eVar28;
                }
            }
            if (eVar27 != null) {
                eVar26 = eVar27;
                z8 = z9;
            } else {
                z8 = true;
            }
            f2 = f3;
            eVar23 = eVar16;
            eVar19 = eVar17;
            eVar21 = eVar18;
        }
        e eVar29 = eVar23;
        float f4 = f2;
        e eVar30 = eVar19;
        e eVar31 = eVar21;
        if (eVar22 != null) {
            int i13 = i2 + 1;
            if (eVar20.ag[i13].c != null) {
                d dVar9 = eVar22.ag[i13];
                if ((eVar22.ak[i] == e.a.MATCH_CONSTRAINT && eVar22.I[i] == 0) && !z5 && dVar9.c.f678a == fVar) {
                    eVar.c(dVar9.f, dVar9.c.f, -dVar9.j(), 5);
                } else if (z5 && dVar9.c.f678a == fVar) {
                    eVar.c(dVar9.f, dVar9.c.f, -dVar9.j(), 4);
                }
                eVar.b(dVar9.f, eVar20.ag[i13].c.f, -dVar9.j(), 6);
                if (z4) {
                    int i14 = i2 + 1;
                    eVar.a(fVar.ag[i14].f, eVar20.ag[i14].f, eVar20.ag[i14].j(), 8);
                }
                arrayList = cVar.h;
                if (arrayList != null && (size = arrayList.size()) > 1) {
                    float f5 = (cVar.p || cVar.r) ? f4 : cVar.j;
                    float f6 = 0.0f;
                    float f7 = 0.0f;
                    e eVar32 = null;
                    i8 = 0;
                    while (i8 < size) {
                        e eVar33 = arrayList.get(i8);
                        float f8 = eVar33.aR[i];
                        if (f8 < f6) {
                            if (cVar.r) {
                                eVar.c(eVar33.ag[i2 + 1].f, eVar33.ag[i2].f, 0, 4);
                                arrayList2 = arrayList;
                                i9 = size;
                                i8++;
                                arrayList = arrayList2;
                                size = i9;
                                f6 = 0.0f;
                            } else {
                                f8 = 1.0f;
                            }
                        }
                        if (f8 == 0.0f) {
                            eVar.c(eVar33.ag[i2 + 1].f, eVar33.ag[i2].f, 0, 8);
                            arrayList2 = arrayList;
                            i9 = size;
                            i8++;
                            arrayList = arrayList2;
                            size = i9;
                            f6 = 0.0f;
                        } else {
                            if (eVar32 != null) {
                                androidx.d.c.i iVar6 = eVar32.ag[i2].f;
                                int i15 = i2 + 1;
                                androidx.d.c.i iVar7 = eVar32.ag[i15].f;
                                androidx.d.c.i iVar8 = eVar33.ag[i2].f;
                                arrayList2 = arrayList;
                                androidx.d.c.i iVar9 = eVar33.ag[i15].f;
                                i9 = size;
                                androidx.d.c.b c = eVar.c();
                                c.a(f7, f5, f8, iVar6, iVar7, iVar8, iVar9);
                                eVar.a(c);
                            } else {
                                arrayList2 = arrayList;
                                i9 = size;
                            }
                            f7 = f8;
                            eVar32 = eVar33;
                            i8++;
                            arrayList = arrayList2;
                            size = i9;
                            f6 = 0.0f;
                        }
                    }
                }
                if (eVar31 == null) {
                    eVar3 = eVar31;
                    if (eVar3 == eVar22 || z5) {
                        d dVar10 = eVar30.ag[i2];
                        int i16 = i2 + 1;
                        d dVar11 = eVar20.ag[i16];
                        androidx.d.c.i iVar10 = dVar10.c != null ? dVar10.c.f : null;
                        androidx.d.c.i iVar11 = dVar11.c != null ? dVar11.c.f : null;
                        d dVar12 = eVar3.ag[i2];
                        d dVar13 = eVar22.ag[i16];
                        if (iVar10 != null && iVar11 != null) {
                            if (i == 0) {
                                f = eVar29.aA;
                            } else {
                                f = eVar29.aB;
                            }
                            eVar.a(dVar12.f, iVar10, dVar12.j(), f, iVar11, dVar13.f, dVar13.j(), 7);
                        }
                        eVar4 = eVar20;
                        if ((z7 && !z6) || eVar3 == null || eVar3 == eVar22) {
                            return;
                        }
                        d dVar14 = eVar3.ag[i2];
                        int i17 = i2 + 1;
                        d dVar15 = eVar22.ag[i17];
                        iVar = dVar14.c != null ? dVar14.c.f : null;
                        androidx.d.c.i iVar12 = dVar15.c != null ? dVar15.c.f : null;
                        eVar5 = eVar4;
                        if (eVar5 != eVar22) {
                            d dVar16 = eVar5.ag[i17];
                            iVar12 = dVar16.c != null ? dVar16.c.f : null;
                        }
                        if (eVar3 == eVar22) {
                            dVar14 = eVar3.ag[i2];
                            dVar15 = eVar3.ag[i17];
                        }
                        if (iVar == null || iVar12 == null) {
                            return;
                        }
                        int j2 = dVar14.j();
                        if (eVar22 == null) {
                            eVar22 = eVar5;
                        }
                        eVar.a(dVar14.f, iVar, j2, 0.5f, iVar12, dVar15.f, eVar22.ag[i17].j(), 5);
                        return;
                    }
                    eVar2 = eVar30;
                } else {
                    eVar2 = eVar30;
                    eVar3 = eVar31;
                }
                if (z7 || eVar3 == null) {
                    int i18 = 8;
                    if (z6 && eVar3 != null) {
                        boolean z11 = cVar.j <= 0 && cVar.i == cVar.j;
                        e eVar34 = eVar3;
                        eVar6 = eVar34;
                        while (eVar6 != null) {
                            e eVar35 = eVar6.aT[i];
                            while (eVar35 != null && eVar35.E() == i18) {
                                eVar35 = eVar35.aT[i];
                            }
                            if (eVar6 == eVar3 || eVar6 == eVar22 || eVar35 == null) {
                                eVar8 = eVar34;
                                eVar9 = eVar6;
                                eVar6 = eVar35;
                            } else {
                                e eVar36 = eVar35 == eVar22 ? null : eVar35;
                                d dVar17 = eVar6.ag[i2];
                                androidx.d.c.i iVar13 = dVar17.f;
                                if (dVar17.c != null) {
                                    androidx.d.c.i iVar14 = dVar17.c.f;
                                }
                                int i19 = i2 + 1;
                                androidx.d.c.i iVar15 = eVar34.ag[i19].f;
                                int j3 = dVar17.j();
                                int j4 = eVar6.ag[i19].j();
                                if (eVar36 != null) {
                                    dVar4 = eVar36.ag[i2];
                                    androidx.d.c.i iVar16 = dVar4.f;
                                    eVar10 = eVar36;
                                    iVar3 = dVar4.c != null ? dVar4.c.f : null;
                                    iVar2 = iVar16;
                                } else {
                                    eVar10 = eVar36;
                                    dVar4 = eVar22.ag[i2];
                                    iVar2 = dVar4 != null ? dVar4.f : null;
                                    iVar3 = eVar6.ag[i19].f;
                                }
                                if (dVar4 != null) {
                                    j4 += dVar4.j();
                                }
                                int i20 = j4;
                                if (eVar34 != null) {
                                    j3 += eVar34.ag[i19].j();
                                }
                                int i21 = j3;
                                int i22 = z11 ? 8 : 4;
                                if (iVar13 == null || iVar15 == null || iVar2 == null || iVar3 == null) {
                                    eVar8 = eVar34;
                                    eVar9 = eVar6;
                                    eVar11 = eVar10;
                                } else {
                                    androidx.d.c.i iVar17 = iVar2;
                                    eVar11 = eVar10;
                                    androidx.d.c.i iVar18 = iVar3;
                                    eVar8 = eVar34;
                                    eVar9 = eVar6;
                                    eVar.a(iVar13, iVar15, i21, 0.5f, iVar17, iVar18, i20, i22);
                                }
                                eVar6 = eVar11;
                            }
                            eVar34 = eVar9.E() != 8 ? eVar9 : eVar8;
                            i18 = 8;
                        }
                        d dVar18 = eVar3.ag[i2];
                        dVar = eVar2.ag[i2].c;
                        int i23 = i2 + 1;
                        dVar2 = eVar22.ag[i23];
                        dVar3 = eVar20.ag[i23].c;
                        if (dVar == null) {
                            if (eVar3 != eVar22) {
                                i4 = 5;
                                eVar7 = eVar;
                                eVar7.c(dVar18.f, dVar.f, dVar18.j(), 5);
                            } else {
                                i4 = 5;
                                eVar7 = eVar;
                                if (dVar3 != null) {
                                    eVar4 = eVar20;
                                    i3 = 5;
                                    eVar.a(dVar18.f, dVar.f, dVar18.j(), 0.5f, dVar2.f, dVar3.f, dVar2.j(), 5);
                                }
                            }
                            eVar4 = eVar20;
                            i3 = i4;
                        } else {
                            eVar4 = eVar20;
                            i3 = 5;
                            eVar7 = eVar;
                        }
                        if (dVar3 != null && eVar3 != eVar22) {
                            eVar7.c(dVar2.f, dVar3.f, -dVar2.j(), i3);
                        }
                        if (z7) {
                        }
                        d dVar142 = eVar3.ag[i2];
                        int i172 = i2 + 1;
                        d dVar152 = eVar22.ag[i172];
                        if (dVar142.c != null) {
                        }
                        if (dVar152.c != null) {
                        }
                        eVar5 = eVar4;
                        if (eVar5 != eVar22) {
                        }
                        if (eVar3 == eVar22) {
                        }
                        if (iVar == null) {
                            return;
                        } else {
                            return;
                        }
                    }
                } else {
                    boolean z12 = cVar.j > 0 && cVar.i == cVar.j;
                    e eVar37 = eVar3;
                    for (e eVar38 = eVar37; eVar38 != null; eVar38 = eVar15) {
                        e eVar39 = eVar38.aT[i];
                        while (true) {
                            if (eVar39 == null) {
                                i5 = 8;
                                break;
                            }
                            i5 = 8;
                            if (eVar39.E() != 8) {
                                break;
                            } else {
                                eVar39 = eVar39.aT[i];
                            }
                        }
                        if (eVar39 != null || eVar38 == eVar22) {
                            d dVar19 = eVar38.ag[i2];
                            androidx.d.c.i iVar19 = dVar19.f;
                            androidx.d.c.i iVar20 = dVar19.c != null ? dVar19.c.f : null;
                            if (eVar37 != eVar38) {
                                iVar20 = eVar37.ag[i2 + 1].f;
                            } else if (eVar38 == eVar3 && eVar37 == eVar38) {
                                iVar20 = eVar2.ag[i2].c != null ? eVar2.ag[i2].c.f : null;
                            }
                            int j5 = dVar19.j();
                            int i24 = i2 + 1;
                            int j6 = eVar38.ag[i24].j();
                            if (eVar39 != null) {
                                d dVar20 = eVar39.ag[i2];
                                eVar12 = eVar39;
                                iVar4 = dVar20.f;
                                dVar6 = dVar20;
                                iVar5 = eVar38.ag[i24].f;
                            } else {
                                eVar12 = eVar39;
                                d dVar21 = eVar20.ag[i24].c;
                                if (dVar21 != null) {
                                    iVar4 = dVar21.f;
                                    dVar5 = dVar21;
                                } else {
                                    dVar5 = dVar21;
                                    iVar4 = null;
                                }
                                iVar5 = eVar38.ag[i24].f;
                                dVar6 = dVar5;
                            }
                            androidx.d.c.i iVar21 = iVar4;
                            androidx.d.c.i iVar22 = iVar5;
                            if (dVar6 != null) {
                                j6 += dVar6.j();
                            }
                            if (eVar37 != null) {
                                i6 = j6;
                                j5 += eVar37.ag[i24].j();
                            } else {
                                i6 = j6;
                            }
                            if (iVar19 == null || iVar20 == null || iVar21 == null || iVar22 == null) {
                                eVar13 = eVar37;
                                eVar14 = eVar38;
                                eVar15 = eVar12;
                                i7 = 8;
                            } else {
                                if (eVar38 == eVar3) {
                                    j5 = eVar3.ag[i2].j();
                                }
                                int i25 = j5;
                                if (eVar38 == eVar22) {
                                    i6 = eVar22.ag[i24].j();
                                }
                                eVar15 = eVar12;
                                eVar13 = eVar37;
                                i7 = 8;
                                eVar14 = eVar38;
                                eVar.a(iVar19, iVar20, i25, 0.5f, iVar21, iVar22, i6, z12 ? 8 : 5);
                            }
                        } else {
                            i7 = i5;
                            eVar15 = eVar39;
                            eVar13 = eVar37;
                            eVar14 = eVar38;
                        }
                        eVar37 = eVar14.E() != i7 ? eVar14 : eVar13;
                    }
                }
                eVar4 = eVar20;
                if (z7) {
                }
                d dVar1422 = eVar3.ag[i2];
                int i1722 = i2 + 1;
                d dVar1522 = eVar22.ag[i1722];
                if (dVar1422.c != null) {
                }
                if (dVar1522.c != null) {
                }
                eVar5 = eVar4;
                if (eVar5 != eVar22) {
                }
                if (eVar3 == eVar22) {
                }
                if (iVar == null) {
                }
            }
        }
        if (z4) {
        }
        arrayList = cVar.h;
        if (arrayList != null) {
            if (cVar.p) {
            }
            float f62 = 0.0f;
            float f72 = 0.0f;
            e eVar322 = null;
            i8 = 0;
            while (i8 < size) {
            }
        }
        if (eVar31 == null) {
        }
        if (z7) {
        }
        int i182 = 8;
        if (z6) {
            if (cVar.j <= 0) {
            }
            e eVar342 = eVar3;
            eVar6 = eVar342;
            while (eVar6 != null) {
            }
            d dVar182 = eVar3.ag[i2];
            dVar = eVar2.ag[i2].c;
            int i232 = i2 + 1;
            dVar2 = eVar22.ag[i232];
            dVar3 = eVar20.ag[i232].c;
            if (dVar == null) {
            }
            if (dVar3 != null) {
                eVar7.c(dVar2.f, dVar3.f, -dVar2.j(), i3);
            }
            if (z7) {
            }
            d dVar14222 = eVar3.ag[i2];
            int i17222 = i2 + 1;
            d dVar15222 = eVar22.ag[i17222];
            if (dVar14222.c != null) {
            }
            if (dVar15222.c != null) {
            }
            eVar5 = eVar4;
            if (eVar5 != eVar22) {
            }
            if (eVar3 == eVar22) {
            }
            if (iVar == null) {
            }
        }
        eVar4 = eVar20;
        if (z7) {
        }
        d dVar142222 = eVar3.ag[i2];
        int i172222 = i2 + 1;
        d dVar152222 = eVar22.ag[i172222];
        if (dVar142222.c != null) {
        }
        if (dVar152222.c != null) {
        }
        eVar5 = eVar4;
        if (eVar5 != eVar22) {
        }
        if (eVar3 == eVar22) {
        }
        if (iVar == null) {
        }
    }
}
