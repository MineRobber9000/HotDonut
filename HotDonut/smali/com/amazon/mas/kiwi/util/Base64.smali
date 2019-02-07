.class public Lcom/amazon/mas/kiwi/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/mas/kiwi/util/Base64$OutputStream;,
        Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/16 v1, 0x40

    .line 150
    const-class v0, Lcom/amazon/mas/kiwi/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    .line 222
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_STANDARD_ALPHABET:[B

    .line 240
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_STANDARD_DECODABET:[B

    .line 282
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 298
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 345
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_ORDERED_ALPHABET:[B

    .line 363
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_ORDERED_DECODABET:[B

    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 240
    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 282
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 298
    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 345
    :array_4
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    .line 363
    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)[B
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 150
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([BII[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 150
    invoke-static/range {p0 .. p5}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([BI[BII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I
    .param p2, "x2"    # [B
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 150
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/mas/kiwi/util/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$300([B[BII)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 150
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/mas/kiwi/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    if-nez p0, :cond_0

    .line 1243
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "s":Ljava/lang/String;
    const-string p1, "Input string was null."

    .end local p1    # "options":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1248
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "options":I
    :cond_0
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 1256
    .local p0, "bytes":[B
    :goto_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/amazon/mas/kiwi/util/Base64;->decode([BIII)[B

    move-result-object v2

    .line 1260
    .end local p0    # "bytes":[B
    .local v2, "bytes":[B
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 1261
    .local p0, "dontGunzip":Z
    :goto_1
    if-eqz v2, :cond_3

    array-length p1, v2

    .end local p1    # "options":I
    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    if-nez p0, :cond_3

    .line 1263
    const/4 p0, 0x0

    aget-byte p0, v2, p0

    .end local p0    # "dontGunzip":Z
    and-int/lit16 p0, p0, 0xff

    const/4 p1, 0x1

    aget-byte p1, v2, p1

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    .line 1264
    .local p0, "head":I
    const p1, 0x8b1f

    if-ne p1, p0, :cond_3

    .line 1265
    const/4 p0, 0x0

    .line 1266
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 1267
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    const/4 p1, 0x0

    .line 1268
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 1269
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 1272
    .local v5, "length":I
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1274
    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzis":Ljava/util/zip/GZIPInputStream;
    move p0, v5

    .line 1276
    .end local v5    # "length":I
    .local p0, "length":I
    :goto_2
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result p0

    if-ltz p0, :cond_2

    .line 1277
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1284
    :catch_0
    move-exception v1

    move v3, p0

    .end local p0    # "length":I
    .local v3, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    move-object v1, v4

    .line 1285
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1289
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1290
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1291
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object p0, v2

    .line 1297
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "length":I
    .local p0, "bytes":[B
    :goto_6
    return-object p0

    .line 1250
    .local p0, "s":Ljava/lang/String;
    .local p1, "options":I
    :catch_1
    move-exception v0

    .line 1251
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .local p0, "bytes":[B
    goto :goto_0

    .line 1260
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local p0    # "bytes":[B
    .restart local v2    # "bytes":[B
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    .line 1281
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :cond_2
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object p0

    .line 1289
    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1290
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1291
    :goto_8
    :try_start_c
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_6

    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bytes":[B
    .restart local v3    # "length":I
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception p0

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p0, v2

    .line 1292
    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    goto :goto_6

    .line 1289
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "buffer":[B
    .restart local v2    # "bytes":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object v0, v3

    .end local v2    # "bytes":[B
    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_9
    :try_start_d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1290
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_a
    :try_start_e
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 1291
    :goto_b
    :try_start_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_c
    throw v2

    .line 1289
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "bytes":[B
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catch_4
    move-exception v0

    goto :goto_7

    .line 1290
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v0

    goto :goto_8

    .line 1289
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bytes":[B
    .local v3, "length":I
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception p1

    goto :goto_4

    .line 1290
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception p1

    goto :goto_5

    .line 1289
    .end local v2    # "bytes":[B
    .end local v3    # "length":I
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "length":I
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception p1

    goto :goto_a

    .line 1290
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception p1

    goto :goto_b

    .line 1291
    :catch_a
    move-exception p0

    goto :goto_c

    .line 1289
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v2    # "bytes":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    :catchall_1
    move-exception p1

    move-object v2, p1

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catchall_2
    move-exception p0

    move-object v2, p0

    move v1, v5

    .end local v5    # "length":I
    .local v1, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local p0, "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catchall_3
    move-exception v1

    move-object v2, v1

    move v1, p0

    .end local p0    # "length":I
    .local v1, "length":I
    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .local p0, "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v4

    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_9

    .local v0, "e":Ljava/io/IOException;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    .local v3, "length":I
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v0, "gzis":Ljava/util/zip/GZIPInputStream;
    move v1, v3

    .end local v3    # "length":I
    .local v1, "length":I
    goto :goto_9

    .line 1284
    .end local v0    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    :catch_b
    move-exception v0

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    goto :goto_3

    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    :catch_c
    move-exception p1

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    move-object v6, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p1

    move-object p1, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "buffer":[B
    .local v3, "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "length":I
    .local p1, "bais":Ljava/io/ByteArrayInputStream;
    :catch_d
    move-exception p0

    move-object v1, v3

    .end local v3    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v1, "gzis":Ljava/util/zip/GZIPInputStream;
    move v3, v5

    .end local v5    # "length":I
    .local v3, "length":I
    move-object v6, v0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p0

    move-object p0, p1

    .end local p1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "bais":Ljava/io/ByteArrayInputStream;
    move-object p1, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v3    # "length":I
    .end local p0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    move-object p0, v2

    .end local v2    # "bytes":[B
    .local p0, "bytes":[B
    goto :goto_6
.end method

.method public static decode([B)[B
    .locals 3
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1120
    const/4 v0, 0x0

    .line 1122
    .local v0, "decoded":[B
    array-length v1, p0

    invoke-static {p0, v2, v1, v2}, Lcom/amazon/mas/kiwi/util/Base64;->decode([BIII)[B

    move-result-object v0

    .line 1126
    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    if-nez p0, :cond_0

    .line 1153
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "source":[B
    const-string p1, "Cannot decode null source array."

    .end local p1    # "off":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1155
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    :cond_0
    if-ltz p1, :cond_1

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_2

    .line 1156
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .end local p3    # "options":I
    const-string v0, "Source array with length %d cannot have offset of %d and process %d bytes."

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p0, p0

    .end local p0    # "source":[B
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1    # "off":I
    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1160
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_2
    if-nez p2, :cond_3

    .line 1161
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 1208
    .end local p0    # "source":[B
    .end local p1    # "off":I
    .end local p2    # "len":I
    .end local p3    # "options":I
    :goto_0
    return-object p0

    .line 1162
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_3
    const/4 v0, 0x4

    if-ge p2, v0, :cond_4

    .line 1163
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "source":[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "off":I
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Base64-encoded string must have at least four characters, but length specified was "

    .end local p3    # "options":I
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1167
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_4
    invoke-static {p3}, Lcom/amazon/mas/kiwi/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1169
    .local v0, "DECODABET":[B
    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 1170
    .local v1, "len34":I
    new-array v5, v1, [B

    .line 1171
    .local v5, "outBuff":[B
    const/4 v4, 0x0

    .line 1173
    .local v4, "outBuffPosn":I
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 1174
    .local v1, "b4":[B
    const/4 v2, 0x0

    .line 1175
    .local v2, "b4Posn":I
    const/4 v3, 0x0

    .line 1176
    .local v3, "i":I
    const/4 v6, 0x0

    .line 1178
    .local v6, "sbiDecode":B
    move v3, p1

    move v9, v6

    .end local v6    # "sbiDecode":B
    .local v9, "sbiDecode":B
    move v6, v4

    .end local v4    # "outBuffPosn":I
    .local v6, "outBuffPosn":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    move v3, v2

    .end local v2    # "b4Posn":I
    .local v3, "b4Posn":I
    move v2, v9

    .end local v9    # "sbiDecode":B
    .local v2, "sbiDecode":B
    :goto_1
    add-int v7, p1, p2

    if-ge v4, v7, :cond_9

    .line 1180
    aget-byte v2, p0, v4

    .end local v2    # "sbiDecode":B
    and-int/lit16 v2, v2, 0xff

    aget-byte v7, v0, v2

    .line 1185
    .local v7, "sbiDecode":B
    const/4 v2, -0x5

    if-lt v7, v2, :cond_5

    .line 1186
    const/4 v2, -0x1

    if-lt v7, v2, :cond_8

    .line 1187
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b4Posn":I
    .local v2, "b4Posn":I
    aget-byte v8, p0, v4

    aput-byte v8, v1, v3

    .line 1188
    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    .line 1189
    const/4 v2, 0x0

    invoke-static {v1, v2, v5, v6, p3}, Lcom/amazon/mas/kiwi/util/Base64;->decode4to3([BI[BII)I

    .end local v2    # "b4Posn":I
    move-result v2

    add-int v3, v6, v2

    .line 1190
    .end local v6    # "outBuffPosn":I
    .local v3, "outBuffPosn":I
    const/4 v2, 0x0

    .line 1193
    .restart local v2    # "b4Posn":I
    aget-byte v6, p0, v4

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_6

    move p2, v7

    .end local v7    # "sbiDecode":B
    .local p2, "sbiDecode":B
    move p0, v2

    .end local v2    # "b4Posn":I
    .local p0, "b4Posn":I
    move p1, v3

    .line 1206
    .end local v3    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    :goto_2
    new-array p0, p1, [B

    .line 1207
    .local p0, "out":[B
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v5, p2, p0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1201
    .local v3, "b4Posn":I
    .restart local v6    # "outBuffPosn":I
    .restart local v7    # "sbiDecode":B
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .end local p1    # "off":I
    const-string p2, "Bad Base64 input character decimal %d in array position %d"

    .end local p2    # "len":I
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3    # "options":I
    const/4 v0, 0x0

    aget-byte p0, p0, v4

    .end local v0    # "DECODABET":[B
    .end local p0    # "source":[B
    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v6    # "outBuffPosn":I
    .restart local v0    # "DECODABET":[B
    .restart local v2    # "b4Posn":I
    .local v3, "outBuffPosn":I
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_6
    move v6, v3

    .line 1178
    .end local v3    # "outBuffPosn":I
    .restart local v6    # "outBuffPosn":I
    :cond_7
    :goto_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    move v3, v2

    .end local v2    # "b4Posn":I
    .local v3, "b4Posn":I
    move v2, v7

    .end local v7    # "sbiDecode":B
    .local v2, "sbiDecode":B
    goto :goto_1

    .end local v2    # "sbiDecode":B
    .restart local v7    # "sbiDecode":B
    :cond_8
    move v2, v3

    .end local v3    # "b4Posn":I
    .local v2, "b4Posn":I
    goto :goto_3

    .end local v7    # "sbiDecode":B
    .local v2, "sbiDecode":B
    .restart local v3    # "b4Posn":I
    :cond_9
    move p2, v2

    .end local v2    # "sbiDecode":B
    .local p2, "sbiDecode":B
    move p0, v3

    .end local v3    # "b4Posn":I
    .local p0, "b4Posn":I
    move p1, v6

    .end local v6    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    goto :goto_2
.end method

.method private static decode4to3([BI[BII)I
    .locals 8
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 1035
    if-nez p0, :cond_0

    .line 1036
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1038
    :cond_0
    if-nez p2, :cond_1

    .line 1039
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1041
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v2, p1, 0x3

    array-length v3, p0

    if-lt v2, v3, :cond_3

    .line 1042
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    :cond_3
    if-ltz p3, :cond_4

    add-int/lit8 v2, p3, 0x2

    array-length v3, p2

    if-lt v2, v3, :cond_5

    .line 1046
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1051
    :cond_5
    invoke-static {p4}, Lcom/amazon/mas/kiwi/util/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 1054
    .local v0, "DECODABET":[B
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_6

    .line 1058
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int v1, v2, v3

    .line 1061
    .local v1, "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    move v2, v6

    .line 1097
    :goto_0
    return v2

    .line 1066
    .end local v1    # "outBuff":I
    :cond_6
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_7

    .line 1071
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int v1, v2, v3

    .line 1075
    .restart local v1    # "outBuff":I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1076
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    move v2, v4

    .line 1077
    goto :goto_0

    .line 1087
    .end local v1    # "outBuff":I
    :cond_7
    aget-byte v2, p0, p1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1093
    .restart local v1    # "outBuff":I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 1094
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1095
    add-int/lit8 v2, p3, 0x2

    int-to-byte v3, v1

    aput-byte v3, p2, v2

    .line 1097
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1525
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .line 1527
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1535
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1538
    :goto_0
    return-void

    .line 1531
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1532
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1535
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1536
    :goto_3
    throw v4

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 1535
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1531
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1390
    const/4 v3, 0x0

    .line 1391
    .local v3, "decodedData":[B
    const/4 v0, 0x0

    .line 1395
    .local v0, "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v5, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1397
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1398
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1401
    .local v7, "numBytes":I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1403
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File is too big for this convenience method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1423
    .local v4, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    throw v8

    .line 1405
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1408
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1413
    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .local v1, "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :goto_3
    const/16 v8, 0x1000

    :try_start_4
    invoke-virtual {v1, v2, v6, v8}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_1

    .line 1414
    add-int/2addr v6, v7

    goto :goto_3

    .line 1418
    :cond_1
    new-array v3, v6, [B

    .line 1419
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1426
    :try_start_5
    invoke-virtual {v1}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1429
    :goto_4
    return-object v3

    .line 1426
    :catch_1
    move-exception v8

    goto :goto_4

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    goto :goto_1

    .line 1422
    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :catch_3
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    goto :goto_0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1357
    .local v0, "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local v1, "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_1
    const-string v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1365
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1368
    :goto_0
    return-void

    .line 1361
    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1362
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1365
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v3

    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto :goto_2

    .line 1361
    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_3
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto :goto_1
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 558
    new-array v1, v5, [B

    .line 559
    .local v1, "raw3":[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 561
    .local v0, "enc4":[B
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 563
    .local v2, "rem":I
    invoke-virtual {p0, v1, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 564
    invoke-static {v0, v1, v2, v4}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([B[BII)[B

    .line 565
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 567
    .end local v2    # "rem":I
    :cond_0
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 8
    .param p0, "raw"    # Ljava/nio/ByteBuffer;
    .param p1, "encoded"    # Ljava/nio/CharBuffer;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 582
    new-array v2, v6, [B

    .line 583
    .local v2, "raw3":[B
    new-array v0, v7, [B

    .line 585
    .local v0, "enc4":[B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 586
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 587
    .local v3, "rem":I
    invoke-virtual {p0, v2, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 588
    invoke-static {v0, v2, v3, v5}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([B[BII)[B

    .line 589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 590
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "i":I
    .end local v3    # "rem":I
    :cond_1
    return-void
.end method

.method private static encode3to4([BII[BII)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 499
    invoke-static {p5}, Lcom/amazon/mas/kiwi/util/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 512
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_0

    aget-byte v2, p0, p1

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    :goto_2
    or-int v1, v2, v3

    .line 516
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 540
    :goto_3
    return-object p3

    .end local v1    # "inBuff":I
    :cond_0
    move v2, v4

    .line 512
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 519
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 520
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 521
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 522
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_3

    .line 526
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 527
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 528
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 529
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 533
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 534
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 535
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 536
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_3

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .locals 6
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v1, 0x0

    .line 467
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([BII[BII)[B

    .line 468
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    :cond_0
    sget-boolean v2, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 721
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 722
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 725
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v2}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytes([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 792
    :cond_0
    sget-boolean v2, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 789
    :catch_0
    move-exception v1

    .line 790
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 793
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object v0

    .line 835
    .local v0, "encoded":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-object v2

    .line 837
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 838
    .local v1, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static encodeBytesToBytes([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    .line 858
    const/4 v0, 0x0

    .line 860
    .local v0, "encoded":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/amazon/mas/kiwi/util/Base64;->encodeBytesToBytes([BIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 864
    :cond_0
    return-object v0

    .line 861
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 862
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v2, Lcom/amazon/mas/kiwi/util/Base64;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOExceptions only come from GZipping, which is turned off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static encodeBytesToBytes([BIII)[B
    .locals 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    if-nez p0, :cond_0

    .line 889
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "source":[B
    const-string p1, "Cannot serialize a null array."

    .end local p1    # "off":I
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 892
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    :cond_0
    if-gez p1, :cond_1

    .line 893
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "source":[B
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2    # "len":I
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot have negative offset: "

    .end local p3    # "options":I
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "off":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 896
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_1
    if-gez p2, :cond_2

    .line 897
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "source":[B
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "off":I
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot have length offset: "

    .end local p3    # "options":I
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 900
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p3    # "options":I
    :cond_2
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_3

    .line 901
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .end local p3    # "options":I
    const-string v0, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .end local p1    # "off":I
    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .end local p2    # "len":I
    aput-object p2, v1, p1

    const/4 p1, 0x2

    array-length p0, p0

    .end local p0    # "source":[B
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 908
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .restart local p3    # "options":I
    :cond_3
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_4

    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 911
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v0, 0x0

    .line 915
    .local v0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 916
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;

    or-int/lit8 p3, p3, 0x1

    invoke-direct {v1, v2, p3}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 917
    .end local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .end local p3    # "options":I
    .local v1, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_2
    new-instance p3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 919
    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 920
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 928
    :try_start_4
    invoke-virtual {p3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 929
    .end local p0    # "source":[B
    :goto_0
    :try_start_5
    invoke-virtual {v1}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 930
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 933
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 988
    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "off":I
    .end local p2    # "len":I
    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_3
    return-object p0

    .line 922
    .restart local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    .local p3, "options":I
    :catch_0
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .line 925
    .end local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .end local p3    # "options":I
    .local v4, "e":Ljava/io/IOException;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :goto_4
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 928
    :catchall_0
    move-exception p3

    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 929
    .end local p2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 930
    .end local p0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :goto_8
    throw p3

    .line 938
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .restart local p3    # "options":I
    :cond_4
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v6, v0

    .line 947
    .local v6, "breakLines":Z
    :goto_9
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_7

    const/4 v1, 0x4

    :goto_a
    add-int/2addr v0, v1

    .line 948
    .local v0, "encLen":I
    if-eqz v6, :cond_5

    .line 949
    div-int/lit8 v1, v0, 0x4c

    add-int/2addr v0, v1

    .line 951
    :cond_5
    new-array v3, v0, [B

    .line 954
    .local v3, "outBuff":[B
    const/4 v0, 0x0

    .line 955
    .local v0, "d":I
    const/4 v4, 0x0

    .line 956
    .local v4, "e":I
    const/4 v1, 0x2

    sub-int v8, p2, v1

    .line 957
    .local v8, "len2":I
    const/4 v1, 0x0

    .local v1, "lineLength":I
    move v9, v1

    .end local v1    # "lineLength":I
    .local v9, "lineLength":I
    move v7, v0

    .line 958
    .end local v0    # "d":I
    .local v7, "d":I
    :goto_b
    if-ge v7, v8, :cond_8

    .line 959
    add-int v1, v7, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([BII[BII)[B

    .line 961
    add-int/lit8 v0, v9, 0x4

    .line 962
    .end local v9    # "lineLength":I
    .local v0, "lineLength":I
    if-eqz v6, :cond_b

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_b

    .line 964
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 965
    .end local v0    # "lineLength":I
    add-int/lit8 v4, v4, 0x1

    .line 966
    const/4 v0, 0x0

    .restart local v0    # "lineLength":I
    move v1, v0

    .line 958
    .end local v0    # "lineLength":I
    .restart local v1    # "lineLength":I
    :goto_c
    add-int/lit8 v0, v7, 0x3

    .end local v7    # "d":I
    .local v0, "d":I
    add-int/lit8 v4, v4, 0x4

    move v9, v1

    .end local v1    # "lineLength":I
    .restart local v9    # "lineLength":I
    move v7, v0

    .end local v0    # "d":I
    .restart local v7    # "d":I
    goto :goto_b

    .line 938
    .end local v3    # "outBuff":[B
    .end local v4    # "e":I
    .end local v6    # "breakLines":Z
    .end local v7    # "d":I
    .end local v8    # "len2":I
    .end local v9    # "lineLength":I
    :cond_6
    const/4 v0, 0x0

    move v6, v0

    goto :goto_9

    .line 947
    .restart local v6    # "breakLines":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_a

    .line 970
    .restart local v3    # "outBuff":[B
    .restart local v4    # "e":I
    .restart local v7    # "d":I
    .restart local v8    # "len2":I
    .restart local v9    # "lineLength":I
    :cond_8
    if-ge v7, p2, :cond_9

    .line 971
    add-int v1, v7, p1

    sub-int v2, p2, v7

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/amazon/mas/kiwi/util/Base64;->encode3to4([BII[BII)[B

    .line 972
    add-int/lit8 v4, v4, 0x4

    .line 977
    :cond_9
    array-length p0, v3

    .end local p0    # "source":[B
    const/4 p1, 0x1

    sub-int/2addr p0, p1

    if-gt v4, p0, :cond_a

    .line 982
    .end local p1    # "off":I
    new-array p0, v4, [B

    .line 983
    .local p0, "finalOut":[B
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v3, p1, p0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .end local p0    # "finalOut":[B
    :cond_a
    move-object p0, v3

    .line 988
    goto :goto_3

    .line 928
    .end local v3    # "outBuff":[B
    .end local v4    # "e":I
    .end local v6    # "breakLines":Z
    .end local v7    # "d":I
    .end local v8    # "len2":I
    .end local v9    # "lineLength":I
    .local v1, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .restart local p1    # "off":I
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception p0

    goto :goto_0

    .line 929
    .end local p0    # "source":[B
    :catch_2
    move-exception p0

    goto :goto_1

    .line 930
    :catch_3
    move-exception p0

    goto :goto_2

    .line 928
    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception p2

    goto :goto_6

    .line 929
    .end local p2    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception p0

    goto :goto_7

    .line 930
    .end local p0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_6
    move-exception p0

    goto :goto_8

    .line 928
    .local v0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "options":I
    :catchall_1
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto :goto_5

    .end local p3    # "options":I
    .restart local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catchall_2
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_5

    .local v1, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catchall_3
    move-exception p0

    move-object p3, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_5

    .restart local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_4
    move-exception p0

    move-object p2, p3

    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p3, p0

    move-object p0, v1

    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_5

    .line 922
    .restart local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catch_7
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v0

    .end local v0    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_4

    .restart local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    :catch_8
    move-exception p0

    move-object v4, p0

    move-object p2, v3

    .end local v3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_4

    .restart local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .restart local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_9
    move-exception p0

    move-object v4, p0

    move-object p2, p3

    .end local p3    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local p2, "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object p1, v2

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p0, v1

    .end local v1    # "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local p0, "b64os":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto/16 :goto_4

    .local v0, "lineLength":I
    .local v3, "outBuff":[B
    .restart local v4    # "e":I
    .restart local v6    # "breakLines":Z
    .restart local v7    # "d":I
    .restart local v8    # "len2":I
    .local p0, "source":[B
    .local p1, "off":I
    .local p2, "len":I
    .local p3, "options":I
    :cond_b
    move v1, v0

    .end local v0    # "lineLength":I
    .local v1, "lineLength":I
    goto :goto_c
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1496
    invoke-static {p0}, Lcom/amazon/mas/kiwi/util/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1497
    .local v1, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1499
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1507
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1510
    :goto_0
    return-void

    .line 1503
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1504
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1507
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1508
    :goto_3
    throw v4

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 1507
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 1503
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v4, 0x0

    .line 1452
    .local v4, "encodedData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1456
    .local v0, "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v8, v8

    const/16 v9, 0x28

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v2, v8, [B

    .line 1458
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1459
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1462
    .local v7, "numBytes":I
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$InputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x1

    invoke-direct {v1, v8, v9}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .local v1, "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :goto_0
    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v6, v8}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_0

    .line 1468
    add-int/2addr v6, v7

    goto :goto_0

    .line 1472
    :cond_0
    new-instance v4, Ljava/lang/String;

    .end local v4    # "encodedData":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v4, v2, v8, v6, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1479
    .restart local v4    # "encodedData":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1482
    :goto_1
    return-object v4

    .line 1475
    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 1476
    .end local v4    # "encodedData":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1479
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/mas/kiwi/util/Base64$InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    throw v8

    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "encodedData":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "encodedData":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :catch_2
    move-exception v9

    goto :goto_4

    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    goto :goto_3

    .line 1475
    .end local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    :catch_3
    move-exception v8

    move-object v3, v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    .restart local v0    # "bis":Lcom/amazon/mas/kiwi/util/Base64$InputStream;
    goto :goto_2
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazon/mas/kiwi/util/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 13
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Cannot serialize a null object."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 660
    :cond_0
    const/4 v2, 0x0

    .line 661
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 662
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 663
    .local v5, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v7, 0x0

    .line 668
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;

    or-int/lit8 v10, p1, 0x1

    invoke-direct {v1, v3, v10}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .local v1, "b64os":Ljava/io/OutputStream;
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_1

    .line 672
    :try_start_2
    new-instance v6, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 673
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v6, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .local v8, "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    move-object v5, v6

    .line 678
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_0
    :try_start_4
    invoke-virtual {v7, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 686
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 687
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 688
    :goto_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 689
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 694
    :goto_4
    :try_start_9
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const-string v12, "US-ASCII"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    .line 698
    :goto_5
    return-object v10

    .line 676
    :cond_1
    :try_start_a
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "oos":Ljava/io/ObjectOutputStream;
    move-object v7, v8

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 680
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 683
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 686
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_7
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 687
    :goto_8
    :try_start_d
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 688
    :goto_9
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 689
    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :goto_b
    throw v10

    .line 696
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v10

    move-object v9, v10

    .line 698
    .local v9, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    .line 686
    .end local v9    # "uue":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v10

    goto :goto_1

    .line 687
    :catch_3
    move-exception v10

    goto :goto_2

    .line 688
    :catch_4
    move-exception v10

    goto :goto_3

    .line 689
    :catch_5
    move-exception v10

    goto :goto_4

    .line 686
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v11

    goto :goto_8

    .line 687
    :catch_7
    move-exception v11

    goto :goto_9

    .line 688
    :catch_8
    move-exception v11

    goto :goto_a

    .line 689
    :catch_9
    move-exception v11

    goto :goto_b

    .line 686
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 680
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v10

    move-object v4, v10

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v10

    move-object v4, v10

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v10

    move-object v4, v10

    move-object v5, v6

    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .locals 5
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    if-nez p0, :cond_0

    .line 1320
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Data to encode was null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1323
    :cond_0
    const/4 v0, 0x0

    .line 1325
    .local v0, "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_0
    new-instance v1, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .local v1, "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1333
    :try_start_2
    invoke-virtual {v1}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1336
    :goto_0
    return-void

    .line 1329
    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1330
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1333
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Lcom/amazon/mas/kiwi/util/Base64$OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    throw v3

    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto :goto_2

    .line 1329
    .end local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    :catch_3
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/amazon/mas/kiwi/util/Base64$OutputStream;
    goto :goto_1
.end method

.method private static final getAlphabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 413
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 414
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_URL_SAFE_ALPHABET:[B

    .line 418
    :goto_0
    return-object v0

    .line 415
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 416
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 418
    :cond_1
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private static final getDecodabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 431
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 432
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_URL_SAFE_DECODABET:[B

    .line 436
    :goto_0
    return-object v0

    .line 433
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 434
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 436
    :cond_1
    sget-object v0, Lcom/amazon/mas/kiwi/util/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
