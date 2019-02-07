.class public final Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field static a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static final h:Lcom/flurry/android/FlurryAgent;

.field private static i:J

.field private static j:Z

.field private static k:Z

.field private static volatile kInsecureReportUrl:Ljava/lang/String;

.field private static volatile kSecureReportUrl:Ljava/lang/String;

.field private static l:Z

.field private static m:Z

.field private static n:Landroid/location/Criteria;

.field private static o:Z

.field private static p:Lcom/flurry/android/AppCircle;


# instance fields
.field private A:Z

.field private B:Ljava/util/List;

.field private C:Landroid/location/LocationManager;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:J

.field private G:Ljava/util/List;

.field private H:J

.field private I:J

.field private J:J

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:B

.field private N:Ljava/lang/String;

.field private O:B

.field private P:Ljava/lang/Long;

.field private Q:I

.field private R:Landroid/location/Location;

.field private S:Ljava/util/Map;

.field private T:Ljava/util/List;

.field private U:Z

.field private V:I

.field private W:Ljava/util/List;

.field private X:I

.field private Y:Lcom/flurry/android/u;

.field private final q:Landroid/os/Handler;

.field private r:Ljava/io/File;

.field private s:Ljava/io/File;

.field private volatile t:Z

.field private volatile u:Z

.field private v:J

.field private w:Ljava/util/Map;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "9774d56d682e549c"

    aput-object v1, v0, v2

    const-string v1, "dead00beef"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/FlurryAgent;->b:[Ljava/lang/String;

    .line 89
    sput-object v3, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 90
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    .line 91
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    .line 93
    sput-object v3, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 94
    const-string v0, "http://ad.flurry.com/getCanvas.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    .line 96
    sput-object v3, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    .line 97
    const-string v0, "http://ad.flurry.com/getAndroidApp.do"

    sput-object v0, Lcom/flurry/android/FlurryAgent;->g:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    .line 138
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/FlurryAgent;->i:J

    .line 139
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 141
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->k:Z

    .line 142
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 145
    sput-boolean v4, Lcom/flurry/android/FlurryAgent;->m:Z

    .line 146
    sput-object v3, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 148
    sput-boolean v2, Lcom/flurry/android/FlurryAgent;->o:Z

    .line 149
    new-instance v0, Lcom/flurry/android/AppCircle;

    invoke-direct {v0}, Lcom/flurry/android/AppCircle;-><init>()V

    sput-object v0, Lcom/flurry/android/FlurryAgent;->p:Lcom/flurry/android/AppCircle;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    .line 158
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    .line 159
    iput-boolean v2, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    .line 162
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    .line 183
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->M:B

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 185
    iput-byte v1, p0, Lcom/flurry/android/FlurryAgent;->O:B

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    .line 197
    new-instance v0, Lcom/flurry/android/u;

    invoke-direct {v0}, Lcom/flurry/android/u;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    .line 275
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 1230
    mul-double v0, p0, v2

    .line 1231
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 1232
    div-double/2addr v0, v2

    .line 1233
    return-wide v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    sget-boolean v1, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-object v0

    .line 313
    :cond_0
    :try_start_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v1, v1, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/android/u;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 317
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->b(Ljava/lang/String;)Lcom/flurry/android/Offer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    .line 2279
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2281
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 2283
    new-instance v1, Lcom/flurry/android/ai;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/ai;-><init>(Lcom/flurry/android/FlurryAgent;Ljava/security/KeyStore;)V

    .line 2285
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 2286
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2288
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 2290
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 2292
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2296
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 1805
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 1807
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1809
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading persistent data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    const/4 v2, 0x0

    .line 1815
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1816
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1818
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1819
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const v2, 0xb5fa

    if-ne v0, v2, :cond_4

    .line 1823
    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->b(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1836
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1841
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    if-nez v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1844
    if-eqz v0, :cond_5

    .line 1846
    const-string v0, "FlurryAgent"

    const-string v1, "Deleted persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1864
    :cond_0
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    if-nez v0, :cond_1

    .line 1866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 1867
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->H:J

    iput-wide v0, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 1868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1873
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x25

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 1874
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/u;->a(Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1882
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1884
    :cond_3
    monitor-exit p0

    return-void

    .line 1827
    :cond_4
    :try_start_6
    const-string v0, "FlurryAgent"

    const-string v2, "Unexpected file type"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    .line 1830
    :catch_0
    move-exception v0

    .line 1832
    :goto_3
    :try_start_7
    const-string v2, "FlurryAgent"

    const-string v3, "Error when loading persistent file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1836
    :try_start_8
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1836
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1850
    :cond_5
    :try_start_a
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1854
    :catch_1
    move-exception v0

    .line 1856
    :try_start_b
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1861
    :cond_6
    const-string v0, "FlurryAgent"

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 1836
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1830
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method static a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 350
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 352
    const-string v0, "FlurryAgent"

    const-string v1, "Cannot accept Offer. AppCircle is not enabled"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/u;->a(Landroid/content/Context;J)V

    .line 356
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 1032
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1035
    if-nez v0, :cond_0

    .line 1037
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->m()V

    .line 1046
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 1048
    :goto_0
    if-eqz p1, :cond_1

    .line 1050
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1053
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1058
    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->v:J

    .line 1059
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->I:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->J:J

    .line 1060
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "FlurryAgent"

    const-string v2, "Not creating report because of bad Android ID or generated ID is null"

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/flurry/android/b;

    invoke-direct {v1, p0, p2, v0}, Lcom/flurry/android/b;-><init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Runnable;)V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    :cond_3
    monitor-exit p0

    return-void

    .line 1046
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static a(Lcom/flurry/android/AppCircleCallback;)V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Lcom/flurry/android/AppCircleCallback;)V

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->d(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->c()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 14

    .prologue
    .line 1595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1596
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1597
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1598
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1599
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1600
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1603
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 1604
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1605
    packed-switch v8, :pswitch_data_0

    .line 1706
    :pswitch_0
    const-string v7, "FlurryAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown chunkType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1710
    :cond_1
    :goto_0
    :pswitch_1
    const/16 v0, 0x108

    if-ne v8, v0, :cond_0

    .line 1712
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_3

    .line 1714
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1716
    const-string v0, "FlurryAgent"

    const-string v7, "No ads from server"

    invoke-static {v0, v7}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/u;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1720
    :cond_3
    return-void

    .line 1608
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_0

    .line 1612
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 1614
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 1616
    new-array v10, v9, [Lcom/flurry/android/v;

    .line 1617
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    .line 1619
    new-instance v11, Lcom/flurry/android/v;

    invoke-direct {v11, p1}, Lcom/flurry/android/v;-><init>(Ljava/io/DataInput;)V

    .line 1620
    aput-object v11, v10, v0

    .line 1617
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1623
    :cond_4
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1626
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 1627
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v7, :cond_1

    .line 1629
    new-instance v9, Lcom/flurry/android/AdImage;

    invoke-direct {v9, p1}, Lcom/flurry/android/AdImage;-><init>(Ljava/io/DataInput;)V

    .line 1630
    iget-wide v10, v9, Lcom/flurry/android/AdImage;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const-string v10, "FlurryAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsed image: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/flurry/android/AdImage;->a:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1635
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1636
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_1

    .line 1638
    new-instance v9, Lcom/flurry/android/e;

    invoke-direct {v9, p1}, Lcom/flurry/android/e;-><init>(Ljava/io/DataInput;)V

    .line 1639
    iget-object v10, v9, Lcom/flurry/android/e;->a:Ljava/lang/String;

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1645
    :pswitch_6
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1648
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 1649
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_1

    .line 1651
    new-instance v9, Lcom/flurry/android/c;

    invoke-direct {v9, p1}, Lcom/flurry/android/c;-><init>(Ljava/io/DataInput;)V

    .line 1652
    iget-byte v10, v9, Lcom/flurry/android/c;->a:B

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1657
    :pswitch_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 1658
    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v9, :cond_1

    .line 1660
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1661
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/c;

    .line 1662
    if-eqz v0, :cond_5

    .line 1664
    invoke-virtual {v0, p1}, Lcom/flurry/android/c;->a(Ljava/io/DataInput;)V

    .line 1658
    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    .line 1670
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1672
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v7, :cond_1

    .line 1674
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1675
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    .line 1676
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1680
    :pswitch_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1682
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/al;

    .line 1683
    if-nez v0, :cond_6

    .line 1685
    new-instance v0, Lcom/flurry/android/al;

    invoke-direct {v0}, Lcom/flurry/android/al;-><init>()V

    .line 1687
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/flurry/android/al;->a:Ljava/lang/String;

    .line 1688
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v0, Lcom/flurry/android/al;->c:I

    .line 1689
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1696
    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1700
    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1605
    nop

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1239
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1338
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1342
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    .line 1343
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1345
    new-instance v0, Lcom/flurry/android/aa;

    invoke-direct {v0}, Lcom/flurry/android/aa;-><init>()V

    .line 1346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/android/aa;->a:J

    .line 1347
    const/16 v1, 0xff

    invoke-static {p1, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->b:Ljava/lang/String;

    .line 1348
    const/16 v1, 0x200

    invoke-static {p2, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->c:Ljava/lang/String;

    .line 1349
    const/16 v1, 0xff

    invoke-static {p3, v1}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/aa;->d:Ljava/lang/String;

    .line 1350
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7

    .prologue
    const/16 v6, 0x3e80

    .line 1248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1250
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1254
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->I:J

    sub-long v3, v0, v2

    .line 1256
    const/16 v0, 0xff

    invoke-static {p1, v0}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/g;

    .line 1262
    if-nez v0, :cond_4

    .line 1264
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 1266
    new-instance v0, Lcom/flurry/android/g;

    invoke-direct {v0}, Lcom/flurry/android/g;-><init>()V

    .line 1267
    const/4 v2, 0x1

    iput v2, v0, Lcom/flurry/android/g;->a:I

    .line 1268
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_7

    iget v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    if-ge v0, v6, :cond_7

    .line 1287
    if-nez p2, :cond_8

    .line 1289
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 1291
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_5

    .line 1293
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1272
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaxEventIds exceeded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1280
    :cond_4
    iget v2, v0, Lcom/flurry/android/g;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/android/g;->a:I

    goto :goto_1

    .line 1300
    :cond_5
    new-instance v0, Lcom/flurry/android/i;

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/i;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    .line 1302
    invoke-virtual {v0}, Lcom/flurry/android/i;->b()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/flurry/android/FlurryAgent;->V:I

    add-int/2addr v1, v2

    if-gt v1, v6, :cond_6

    .line 1304
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1305
    iget v1, p0, Lcom/flurry/android/FlurryAgent;->V:I

    invoke-virtual {v0}, Lcom/flurry/android/i;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    goto/16 :goto_0

    .line 1310
    :cond_6
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    .line 1311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    goto/16 :goto_0

    .line 1317
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v2, p2

    goto/16 :goto_2
.end method

.method static a(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 360
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->a(Z)V

    goto :goto_0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/flurry/android/FlurryAgent;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z

    return v0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 2003
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2004
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 2005
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2007
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const/4 v0, 0x0

    .line 2010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1487
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->k()Ljava/lang/String;

    move-result-object v0

    .line 1488
    if-nez v0, :cond_1

    move v0, v1

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1495
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1501
    :goto_1
    if-nez v0, :cond_0

    sget-object v2, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1505
    sget-boolean v2, Lcom/flurry/android/FlurryAgent;->k:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/flurry/android/FlurryAgent;->l:Z

    if-nez v2, :cond_0

    .line 1507
    sget-object v2, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v2

    .line 1508
    const/4 v3, 0x1

    :try_start_1
    sput-boolean v3, Lcom/flurry/android/FlurryAgent;->l:Z

    .line 1509
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->k()Ljava/lang/String;

    move-result-object v3

    .line 1510
    if-nez v3, :cond_2

    .line 1512
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1499
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending report exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 1514
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1517
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/flurry/android/FlurryAgent;->a([BLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto :goto_0

    .line 1514
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1529
    const-string v2, "local"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    :goto_0
    return v0

    .line 1534
    :cond_0
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending report to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1537
    const-string v3, "application/octet-stream"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1538
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1541
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1542
    const/16 v4, 0x2710

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1543
    const/16 v4, 0x3a98

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1544
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.expect-continue"

    invoke-interface {v4, v5, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1546
    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 1547
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1548
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 1549
    monitor-enter p0

    .line 1551
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 1553
    :try_start_0
    const-string v1, "FlurryAgent"

    const-string v3, "Report successful"

    invoke-static {v1, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 1555
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1558
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    const-string v2, "FlurryAgent"

    const-string v3, "Processing report response"

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1564
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    .line 1565
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1558
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v0

    .line 1562
    :cond_2
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report failed. HTTP response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1
.end method

.method public static addUserCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b()Lcom/flurry/android/u;
    .locals 1

    .prologue
    .line 917
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2061
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 2100
    :cond_0
    :goto_0
    return-object v0

    .line 2068
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2069
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2069
    :cond_3
    sget-object v4, Lcom/flurry/android/FlurryAgent;->b:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 2076
    :cond_5
    const-string v1, ".flurryb."

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2077
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2082
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2083
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 2085
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 2093
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2087
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 2089
    :goto_3
    :try_start_2
    const-string v3, "FlurryAgent"

    const-string v4, "Error when loading b file"

    invoke-static {v3, v4, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2093
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 2087
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p0}, Lcom/flurry/android/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 928
    if-eqz v0, :cond_1

    .line 930
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-nez v0, :cond_8

    .line 934
    const-string v0, "FlurryAgent"

    const-string v1, "Initializing Flurry session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iput-object p2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    .line 938
    const-string v0, ".flurryb."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    .line 939
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->m:Z

    if-eqz v0, :cond_2

    .line 941
    new-instance v0, Lcom/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 944
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 946
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 948
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    .line 950
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 951
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 953
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_4
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->y:Ljava/lang/String;

    .line 957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 958
    iget-wide v4, p0, Lcom/flurry/android/FlurryAgent;->v:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/flurry/android/FlurryAgent;->i:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 960
    const-string v0, "FlurryAgent"

    const-string v4, "New session"

    invoke-static {v0, v4}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/flurry/android/FlurryAgent;->H:J

    .line 964
    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->I:J

    .line 965
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/flurry/android/FlurryAgent;->J:J

    .line 966
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    .line 969
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    .line 972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->V:I

    .line 976
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    .line 980
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_6

    .line 982
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 984
    const-string v0, "FlurryAgent"

    const-string v2, "Initializing AppCircle"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v2, Lcom/flurry/android/a;

    invoke-direct {v2}, Lcom/flurry/android/a;-><init>()V

    .line 987
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    iput-object v0, v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    .line 988
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->F:J

    iput-wide v3, v2, Lcom/flurry/android/a;->b:J

    .line 989
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->H:J

    iput-wide v3, v2, Lcom/flurry/android/a;->c:J

    .line 990
    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->I:J

    iput-wide v3, v2, Lcom/flurry/android/a;->d:J

    .line 991
    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/a;->e:Ljava/lang/String;

    .line 992
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/flurry/android/a;->f:Ljava/lang/String;

    .line 993
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    iput-object v0, v2, Lcom/flurry/android/a;->g:Landroid/os/Handler;

    .line 995
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/android/u;->a(Landroid/content/Context;Lcom/flurry/android/a;)V

    .line 997
    const-string v0, "FlurryAgent"

    const-string v2, "AppCircle initialized"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->a()V

    .line 1002
    :cond_6
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 1003
    new-instance v2, Lcom/flurry/android/d;

    invoke-direct {v2, p0, v1, v0}, Lcom/flurry/android/d;-><init>(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;Z)V

    invoke-direct {p0, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/Runnable;)V

    .line 1026
    :cond_7
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_8
    monitor-exit p0

    return-void

    .line 991
    :cond_9
    :try_start_1
    sget-object v0, Lcom/flurry/android/FlurryAgent;->e:Ljava/lang/String;

    goto :goto_0

    .line 1019
    :cond_a
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1023
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->i()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/FlurryAgent;->v:J

    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-nez v3, :cond_0

    sget-wide v3, Lcom/flurry/android/FlurryAgent;->i:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->c(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/io/DataInputStream;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 1888
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1890
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    if-le v1, v5, :cond_0

    .line 1894
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1898
    :cond_0
    if-lt v1, v5, :cond_4

    .line 1900
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1901
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading API key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1905
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 1906
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1908
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_1
    iput-object v1, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    .line 1912
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    .line 1913
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/android/FlurryAgent;->F:J

    .line 1915
    const-string v1, "FlurryAgent"

    const-string v2, "Loading session reports"

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 1921
    if-eqz v1, :cond_2

    .line 1923
    new-array v1, v1, [B

    .line 1926
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1927
    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1929
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session report added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1932
    :cond_2
    const-string v0, "FlurryAgent"

    const-string v1, "Persistent file loaded"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    :goto_1
    monitor-exit p0

    return-void

    .line 1938
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1943
    :cond_4
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting old file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized b(Z)[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1357
    monitor-enter p0

    .line 1361
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1362
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1365
    const/16 v0, 0xf

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1366
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1368
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1375
    :goto_0
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->e()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1379
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->f()Ljava/util/Set;

    move-result-object v0

    .line 1380
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1382
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1384
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1385
    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    :goto_2
    :try_start_2
    const-string v3, "FlurryAgent"

    const-string v4, "Error when generating report"

    invoke-static {v3, v4, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1441
    :try_start_3
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 1444
    :goto_3
    monitor-exit p0

    return-object v0

    .line 1372
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1441
    :catchall_0
    move-exception v0

    :goto_4
    :try_start_5
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1357
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1390
    :cond_1
    const-wide/16 v5, 0x0

    :try_start_6
    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1391
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1394
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1395
    const/16 v0, 0x75

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1397
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1400
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1401
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1403
    iget-wide v5, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1404
    iget-wide v5, p0, Lcom/flurry/android/FlurryAgent;->H:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1407
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1408
    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1409
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1410
    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1411
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1412
    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1413
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1414
    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1415
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1416
    const-string v0, "build.device"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1417
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1418
    const-string v0, "build.product"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1419
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 1423
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1424
    :goto_5
    if-ge v3, v5, :cond_3

    .line 1426
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1427
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1424
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 1430
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->B:Ljava/util/List;

    .line 1432
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1433
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 1441
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 1435
    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2126
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2128
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2139
    :goto_0
    return-object v0

    .line 2130
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 2132
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2135
    :catch_0
    move-exception v0

    .line 2137
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2139
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2031
    monitor-enter p0

    :try_start_0
    const-string v0, ".flurryb."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    .line 2032
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2033
    if-nez v0, :cond_0

    .line 2053
    :goto_0
    monitor-exit p0

    return-void

    .line 2038
    :cond_0
    const/4 v2, 0x0

    .line 2041
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->r:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2042
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2043
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2044
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2052
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2046
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2048
    :goto_1
    :try_start_4
    const-string v2, "FlurryAgent"

    const-string v3, "Error when saving b file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2052
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 2046
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->l()V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/i;

    .line 1326
    invoke-virtual {v0, p1}, Lcom/flurry/android/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1328
    invoke-virtual {v0}, Lcom/flurry/android/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    :cond_1
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 1737
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v1, "generating report"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Z)[B

    move-result-object v0

    .line 1739
    if-eqz v0, :cond_2

    .line 1742
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryAgent;->a([B)Z

    move-result v0

    .line 1743
    if-eqz v0, :cond_0

    .line 1745
    const-string v1, "FlurryAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_1

    const-string v0, "initial "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "agent report"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->l()V

    .line 1764
    :cond_0
    :goto_1
    return-void

    .line 1745
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1753
    :cond_2
    const-string v0, "FlurryAgent"

    const-string v1, "Error generating report"

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1756
    :catch_0
    move-exception v0

    .line 1758
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1760
    :catch_1
    move-exception v0

    .line 1762
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static clearUserCookies()V
    .locals 1

    .prologue
    .line 408
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->l()V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    .prologue
    .line 2144
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2147
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2148
    monitor-enter p0

    .line 2150
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    .line 2152
    iput-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    .line 2158
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2159
    sget-object v1, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 2160
    if-nez v1, :cond_1

    .line 2162
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 2164
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 2165
    if-eqz v1, :cond_3

    .line 2167
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2168
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2171
    :goto_1
    return-object v0

    .line 2156
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    goto :goto_0

    .line 2158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2171
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic d(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 1479
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1481
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->n()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/u;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-object v0, v0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static enableAppCircle()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    .line 385
    return-void
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 635
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryAgent;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    return-void

    .line 637
    :catch_0
    move-exception v0

    .line 639
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to signify the end of event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic f()Lcom/flurry/android/FlurryAgent;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/flurry/android/FlurryAgent;->i:J

    return-wide v0
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 743
    const/16 v0, 0x75

    return v0
.end method

.method public static getAppCircle()Lcom/flurry/android/AppCircle;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/flurry/android/FlurryAgent;->p:Lcom/flurry/android/AppCircle;

    return-object v0
.end method

.method public static getForbidPlaintextFallback()Z
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x0

    return v0
.end method

.method public static getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    return v0
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 1134
    monitor-enter p0

    const/4 v1, 0x0

    .line 1137
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1138
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1140
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1141
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1142
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->H:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1143
    iget-wide v0, p0, Lcom/flurry/android/FlurryAgent;->J:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1144
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1145
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->K:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->L:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1147
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->M:B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1148
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 1152
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1162
    :goto_1
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1163
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1164
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1165
    iget-byte v0, p0, Lcom/flurry/android/FlurryAgent;->O:B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1166
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1176
    :goto_2
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1177
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/g;

    iget v0, v0, Lcom/flurry/android/g;->a:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1215
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1217
    :goto_4
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1221
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1222
    :goto_5
    monitor-exit p0

    return-void

    .line 1148
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    goto :goto_0

    .line 1156
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1157
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1158
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->a(D)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 1159
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1221
    :catchall_0
    move-exception v0

    :goto_6
    :try_start_5
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1134
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1172
    :cond_2
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1173
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_2

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1184
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/i;

    .line 1186
    invoke-virtual {v0}, Lcom/flurry/android/i;->b()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_7

    .line 1188
    :cond_4
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->U:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1190
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->Q:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1191
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1192
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/aa;

    .line 1194
    iget-wide v4, v0, Lcom/flurry/android/aa;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1195
    iget-object v4, v0, Lcom/flurry/android/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1196
    iget-object v4, v0, Lcom/flurry/android/aa;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1197
    iget-object v0, v0, Lcom/flurry/android/aa;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_8

    .line 1200
    :cond_5
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-eqz v0, :cond_6

    .line 1202
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->Y:Lcom/flurry/android/u;

    invoke-virtual {v0}, Lcom/flurry/android/u;->g()Ljava/util/List;

    move-result-object v0

    .line 1203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/p;

    .line 1206
    invoke-virtual {v0, v2}, Lcom/flurry/android/p;->a(Ljava/io/DataOutput;)V

    goto :goto_9

    .line 1211
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1213
    :cond_7
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1221
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    .line 1215
    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method

.method protected static isCaptureUncaughtExceptions()Z
    .locals 1

    .prologue
    .line 876
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->m:Z

    return v0
.end method

.method private declared-synchronized j()V
    .locals 1

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/android/FlurryAgent;->X:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/FlurryAgent;->X:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    monitor-exit p0

    return-void

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1448
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1450
    sget-object v0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 1464
    :goto_0
    return-object v0

    .line 1452
    :cond_0
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->l:Z

    if-eqz v0, :cond_1

    .line 1454
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 1460
    :cond_1
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->k:Z

    if-eqz v0, :cond_2

    .line 1462
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kSecureReportUrl:Ljava/lang/String;

    goto :goto_0

    .line 1464
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAgent;->kInsecureReportUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1949
    monitor-enter p0

    .line 1953
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 1954
    if-nez v0, :cond_0

    .line 1992
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1993
    :goto_0
    monitor-exit p0

    return-void

    .line 1959
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent;->s:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1960
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1961
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1962
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1964
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1967
    iget-boolean v0, p0, Lcom/flurry/android/FlurryAgent;->E:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1968
    iget-wide v2, p0, Lcom/flurry/android/FlurryAgent;->F:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1972
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 1974
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->G:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1975
    array-length v3, v0

    .line 1976
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-le v4, v5, :cond_2

    .line 1978
    const-string v0, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discarded sessions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1992
    :try_start_4
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1981
    :cond_2
    :try_start_5
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1982
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1972
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1986
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1988
    :goto_2
    :try_start_6
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1992
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/r;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1986
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 538
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 542
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 566
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 570
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 4

    .prologue
    .line 616
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 620
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 590
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 594
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 2176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->C:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2180
    :cond_0
    monitor-exit p0

    return-void

    .line 2176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->D:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 490
    if-nez p0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 500
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 653
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 655
    :catch_0
    move-exception v0

    .line 657
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 891
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-void

    .line 893
    :catch_0
    move-exception v0

    .line 895
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 907
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/android/FlurryAgent;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 911
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 511
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0}, Lcom/flurry/android/FlurryAgent;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 515
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 452
    if-nez p0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/FlurryAgent;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 709
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 712
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 713
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 714
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/FlurryAgent;->P:Ljava/lang/Long;

    .line 716
    :cond_0
    return-void
.end method

.method public static setCanvasUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 669
    sput-object p0, Lcom/flurry/android/FlurryAgent;->d:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3

    .prologue
    .line 863
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 865
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iget-boolean v0, v0, Lcom/flurry/android/FlurryAgent;->t:Z

    if-eqz v0, :cond_0

    .line 867
    const-string v0, "FlurryAgent"

    const-string v2, "Cannot setCaptureUncaughtExceptions after onSessionStart"

    invoke-static {v0, v2}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    monitor-exit v1

    .line 871
    :goto_0
    return-void

    .line 870
    :cond_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->m:Z

    .line 871
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCatalogIntentName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    sput-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public static setContinueSessionMillis(J)V
    .locals 3

    .prologue
    .line 813
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 815
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid time set for session resumption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    return-void

    .line 819
    :cond_0
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 821
    :try_start_0
    sput-wide p0, Lcom/flurry/android/FlurryAgent;->i:J

    .line 822
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDefaultNoAdsMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/flurry/android/FlurryAgent;->o:Z

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    sput-object p0, Lcom/flurry/android/u;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setGender(B)V
    .locals 2

    .prologue
    .line 725
    packed-switch p0, :pswitch_data_0

    .line 733
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/flurry/android/FlurryAgent;->O:B

    .line 735
    :goto_0
    return-void

    .line 729
    :pswitch_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-byte p0, v0, Lcom/flurry/android/FlurryAgent;->O:B

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setGetAppUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    sput-object p0, Lcom/flurry/android/FlurryAgent;->f:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2

    .prologue
    .line 695
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 697
    :try_start_0
    sput-object p0, Lcom/flurry/android/FlurryAgent;->n:Landroid/location/Criteria;

    .line 698
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEnabled(Z)V
    .locals 2

    .prologue
    .line 774
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 776
    if-eqz p0, :cond_0

    .line 778
    :try_start_0
    invoke-static {}, Lcom/flurry/android/ah;->b()V

    .line 784
    :goto_0
    monitor-exit v1

    return-void

    .line 782
    :cond_0
    invoke-static {}, Lcom/flurry/android/ah;->a()V

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogEvents(Z)V
    .locals 2

    .prologue
    .line 831
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 833
    :try_start_0
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->j:Z

    .line 834
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 793
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 795
    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/ah;->a(I)V

    .line 796
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .prologue
    .line 687
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 689
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-boolean p0, v0, Lcom/flurry/android/FlurryAgent;->A:Z

    .line 690
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setReportUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 664
    sput-object p0, Lcom/flurry/android/FlurryAgent;->c:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public static setUseHttps(Z)V
    .locals 0

    .prologue
    .line 426
    sput-boolean p0, Lcom/flurry/android/FlurryAgent;->k:Z

    .line 427
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 846
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 848
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    const/16 v2, 0xff

    invoke-static {p0, v2}, Lcom/flurry/android/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/flurry/android/FlurryAgent;->N:Ljava/lang/String;

    .line 849
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 679
    sget-object v1, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    monitor-enter v1

    .line 681
    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryAgent;->h:Lcom/flurry/android/FlurryAgent;

    iput-object p0, v0, Lcom/flurry/android/FlurryAgent;->z:Ljava/lang/String;

    .line 682
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    const-string v0, ""

    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 249
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/flurry/android/FlurryAgent;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 270
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    .line 271
    return-void

    .line 262
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 2202
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent;->R:Landroid/location/Location;

    .line 2203
    invoke-direct {p0}, Lcom/flurry/android/FlurryAgent;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2209
    :goto_0
    monitor-exit p0

    return-void

    .line 2205
    :catch_0
    move-exception v0

    .line 2207
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2215
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2221
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2227
    return-void
.end method
