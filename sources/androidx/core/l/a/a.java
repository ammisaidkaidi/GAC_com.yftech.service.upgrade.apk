package androidx.core.l.a;

import androidx.annotation.ap;
import androidx.annotation.ax;
import java.util.Locale;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int f483a = 4;
    private static final int b = 14;
    private static final int c = 5;
    private static final int d = 25;
    private static final int e = 5;
    private static final String g = "\n\u000b\f\r\u0085\u2028\u2029";
    private static final String h = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000";
    private static final String i = "\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String j = ",*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String k = "(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";
    private static final String m = ",\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String n = "(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)";
    private static final String o = ":,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029";
    private static final String p = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)";
    private static final C0035a[] f = {new C0035a(99, 99, -1, -1), new C0035a(35, 36, -1, -1), new C0035a(71, 72, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(85, 86, -1, -1), new C0035a(90, 96, -1, -1), new C0035a(80, 81, -1, -1), new C0035a(6, 6, -1, -1), new C0035a(20, 20, -1, -1), new C0035a(19, 19, -1, -1), new C0035a(32, 34, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(30, 31, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(50, 52, -1, -1), new C0035a(83, 83, -1, -1), new C0035a(60, 62, -1, -1), new C0035a(46, 47, -1, -1), new C0035a(66, 67, 73, -1), new C0035a(40, 42, -1, -1), new C0035a(70, 71, -1, -1), new C0035a(1, 2, -1, -1), new C0035a(20, 21, -1, -1), new C0035a(3, 4, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(48, 49, -1, -1), new C0035a(55, 56, -1, -1), new C0035a(63, 65, -1, -1), new C0035a(96, 96, -1, -1), new C0035a(38, 39, -1, -1), new C0035a(55, 56, -1, -1), new C0035a(27, 28, -1, -1), new C0035a(58, 58, -1, -1), new C0035a(68, 69, -1, -1), new C0035a(3, 4, -1, -1), new C0035a(7, 8, -1, -1), new C0035a(87, 88, 86, -1), new C0035a(88, 89, 96, -1), new C0035a(10, 14, 0, 6), new C0035a(43, 45, -1, -1), new C0035a(73, 74, -1, -1), new C0035a(97, 97, -1, -1), new C0035a(15, 19, -1, -1), new C0035a(6, 6, 0, 9), new C0035a(96, 96, -1, -1), new C0035a(2, 2, -1, -1), new C0035a(29, 29, -1, -1), new C0035a(57, 57, -1, -1), new C0035a(37, 38, -1, -1), new C0035a(75, 79, 87, 88), new C0035a(84, 84, -1, -1), new C0035a(22, 24, 20, -1), new C0035a(6, 9, -1, -1), new C0035a(5, 5, -1, -1), new C0035a(98, 99, -1, -1), new C0035a(53, 54, -1, -1), new C0035a(24, 26, -1, -1), new C0035a(82, 83, -1, -1)};
    private static final Pattern l = Pattern.compile("[^,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern q = Pattern.compile("(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern r = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+states[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mariana[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(nd|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+hampshire)|(nj|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+jersey)|(nm|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+island)|(sc|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(sd|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+virginia)|(wy|wyoming))(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern s = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    private static final Pattern t = Pattern.compile("([0-9]+)(st|nd|rd|th)", 2);
    private static final Pattern u = Pattern.compile("(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.l.a.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class C0035a {

        /* renamed from: a, reason: collision with root package name */
        int f484a;
        int b;
        int c;
        int d;

        C0035a(int i, int i2, int i3, int i4) {
            this.f484a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        boolean a(String str) {
            int parseInt = Integer.parseInt(str.substring(0, 2));
            return (this.f484a <= parseInt && parseInt <= this.b) || parseInt == this.c || parseInt == this.d;
        }
    }

    private static boolean d(String str) {
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (Character.isDigit(str.charAt(i3))) {
                i2++;
            }
        }
        if (i2 > 5) {
            return false;
        }
        Matcher matcher = t.matcher(str);
        if (!matcher.find()) {
            return true;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        if (parseInt == 0) {
            return false;
        }
        String lowerCase = matcher.group(2).toLowerCase(Locale.getDefault());
        switch (parseInt % 10) {
            case 1:
                return lowerCase.equals(parseInt % 100 == 11 ? "th" : "st");
            case 2:
                return lowerCase.equals(parseInt % 100 == 12 ? "th" : "nd");
            case 3:
                return lowerCase.equals(parseInt % 100 == 13 ? "th" : "rd");
            default:
                return lowerCase.equals("th");
        }
    }

    @ax
    public static MatchResult a(String str, int i2) {
        if (i2 > 0 && o.indexOf(str.charAt(i2 - 1)) == -1) {
            return null;
        }
        Matcher region = q.matcher(str).region(i2, str.length());
        if (region.lookingAt()) {
            MatchResult matchResult = region.toMatchResult();
            if (d(matchResult.group(0))) {
                return matchResult;
            }
        }
        return null;
    }

    @ax
    public static MatchResult b(String str, int i2) {
        if (i2 > 0 && j.indexOf(str.charAt(i2 - 1)) == -1) {
            return null;
        }
        Matcher region = r.matcher(str).region(i2, str.length());
        if (region.lookingAt()) {
            return region.toMatchResult();
        }
        return null;
    }

    private static boolean a(String str, MatchResult matchResult) {
        if (matchResult == null) {
            return false;
        }
        int groupCount = matchResult.groupCount();
        while (true) {
            if (groupCount <= 0) {
                break;
            }
            int i2 = groupCount - 1;
            if (matchResult.group(groupCount) != null) {
                groupCount = i2;
                break;
            }
            groupCount = i2;
        }
        return u.matcher(str).matches() && f[groupCount].a(str);
    }

    @ax
    public static boolean a(String str, String str2) {
        return a(str, b(str2, 0));
    }

    @ax
    public static boolean a(String str) {
        return u.matcher(str).matches();
    }

    @ax
    public static boolean b(String str) {
        return s.matcher(str).matches();
    }

    private static int b(String str, MatchResult matchResult) {
        MatchResult b2;
        int end = matchResult.end();
        Matcher matcher = l.matcher(str);
        String str2 = com.yftech.service.upgrade.a.d;
        int i2 = -1;
        int i3 = -1;
        boolean z = false;
        int i4 = 1;
        int i5 = 1;
        boolean z2 = true;
        while (true) {
            if (end < str.length()) {
                if (!matcher.find(end)) {
                    return -str.length();
                }
                if (matcher.end() - matcher.start() > 25) {
                    return -matcher.end();
                }
                while (end < matcher.start()) {
                    int i6 = end + 1;
                    if (g.indexOf(str.charAt(end)) != -1) {
                        i4++;
                    }
                    end = i6;
                }
                if (i4 > 5 || (i5 = i5 + 1) > 14) {
                    break;
                }
                if (a(str, end) == null) {
                    if (!b(matcher.group(0))) {
                        if (i5 == 5 && !z) {
                            end = matcher.end();
                            break;
                        }
                        if (z && i5 > 4 && (b2 = b(str, end)) != null) {
                            if (str2.equals("et") && b2.group(0).equals("al")) {
                                end = b2.end();
                                break;
                            }
                            Matcher matcher2 = l.matcher(str);
                            if (matcher2.find(b2.end())) {
                                if (a(matcher2.group(0), b2)) {
                                    return matcher2.end();
                                }
                            } else {
                                i3 = b2.end();
                            }
                        }
                        z2 = false;
                    } else {
                        z2 = false;
                        z = true;
                    }
                } else {
                    if (z2 && i4 > 1) {
                        return -end;
                    }
                    if (i2 == -1) {
                        i2 = end;
                    }
                }
                str2 = matcher.group(0);
                end = matcher.end();
            } else {
                break;
            }
        }
        if (i3 > 0) {
            return i3;
        }
        if (i2 > 0) {
            end = i2;
        }
        return -end;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        Matcher matcher = q.matcher(str);
        int i2 = 0;
        while (matcher.find(i2)) {
            if (d(matcher.group(0))) {
                int start = matcher.start();
                int b2 = b(str, matcher);
                if (b2 > 0) {
                    return str.substring(start, b2);
                }
                i2 = -b2;
            } else {
                i2 = matcher.end();
            }
        }
        return null;
    }

    private a() {
    }
}
