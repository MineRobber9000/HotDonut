.class public final Lcom/amazon/android/framework/task/command/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private b:Lcom/amazon/venezia/command/h;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Ljava/util/concurrent/BlockingQueue;

.field private f:Landroid/app/Application;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private g:Lcom/amazon/android/framework/task/command/e;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private h:Lcom/amazon/android/o/a;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private final i:Landroid/content/ServiceConnection;

.field private final j:Lcom/amazon/venezia/command/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "CommandServiceClient"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->e:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/amazon/android/framework/task/command/i;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/command/i;-><init>(Lcom/amazon/android/framework/task/command/b;)V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->i:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/amazon/android/framework/task/command/j;

    invoke-direct {v0, p0}, Lcom/amazon/android/framework/task/command/j;-><init>(Lcom/amazon/android/framework/task/command/b;)V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->j:Lcom/amazon/venezia/command/f;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.amazon.venezia.CommandService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.amazon.venezia.service.command.CommandServiceImpl"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Ljava/util/List;)Landroid/content/Intent;
    .locals 8

    const/4 v7, 0x0

    const-string v0, "Signature of package "

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v7

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Examining package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v4, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking signature of package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageSignatureTrusted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->g:Lcom/amazon/android/framework/task/command/e;

    sget-object v4, Lcom/amazon/android/framework/task/command/k;->a:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/amazon/android/framework/task/command/e;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature of package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is okay"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    move-object v0, v3

    move v1, v2

    :cond_0
    if-ltz v1, :cond_2

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature of package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_2
    move-object v0, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->e:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/android/framework/task/command/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic c()Lcom/amazon/android/framework/util/KiwiLogger;
    .locals 1

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-object v0
.end method

.method private d()Lcom/amazon/android/framework/task/command/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Blocking for result from service"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/framework/task/command/l;

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Received result from service"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "TaskThread interrupted, returning null result"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amazon/venezia/command/n;)Lcom/amazon/android/framework/task/command/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/venezia/command/n;->a(Lcom/amazon/venezia/command/y;)V

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/b;->d()Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/amazon/venezia/command/r;Lcom/amazon/android/framework/task/command/a;)Lcom/amazon/android/framework/task/command/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amazon/android/framework/task/command/h;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/framework/task/command/h;-><init>(Lcom/amazon/android/framework/task/command/b;Lcom/amazon/android/framework/task/command/a;)V

    invoke-interface {p1, v0}, Lcom/amazon/venezia/command/r;->a(Lcom/amazon/venezia/command/s;)V

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/b;->d()Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/amazon/venezia/command/w;)Lcom/amazon/android/framework/task/command/l;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/g;,
            Lcom/amazon/android/b/f;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v6, 0x40

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v3, "Binding Service!!!"

    invoke-virtual {v0, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.amazon.venezia.CommandService"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "Created intent with  action  com.amazon.venezia.CommandService"

    invoke-virtual {v3, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/android/framework/task/command/b;->f:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v7

    :goto_1
    if-nez v3, :cond_2

    new-instance v0, Lcom/amazon/android/b/g;

    invoke-direct {v0}, Lcom/amazon/android/b/g;-><init>()V

    throw v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "Found service on one or more packages"

    invoke-virtual {v3, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/android/framework/task/command/b;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using previously determined package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/framework/task/command/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to bind to service on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/android/framework/task/command/b;->f:Landroid/app/Application;

    iget-object v5, p0, Lcom/amazon/android/framework/task/command/b;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v0, v5, v7}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/amazon/android/b/f;

    invoke-direct {v0}, Lcom/amazon/android/b/f;-><init>()V

    throw v0

    :cond_4
    sget-object v3, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "No previously determined package found, checking for suitable package."

    invoke-virtual {v3, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/android/framework/task/command/b;->f:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/framework/task/command/b;->a(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "No app with valid signature was providing our service."

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/android/b/g;

    invoke-direct {v0}, Lcom/amazon/android/b/g;-><init>()V

    throw v0

    :cond_5
    :try_start_0
    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "Blocking while service is being bound!!"

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/venezia/command/h;

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v4, "service bound, returning!!"

    invoke-virtual {v0, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kiwi.BindService Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v1, v4, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->h:Lcom/amazon/android/o/a;

    const-string v1, "PACKAGE"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/amazon/android/framework/task/command/b;->c:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->h:Lcom/amazon/android/o/a;

    const-string v1, "COMMAND"

    invoke-interface {p1}, Lcom/amazon/venezia/command/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/o/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/b;->j:Lcom/amazon/venezia/command/f;

    invoke-interface {v0, p1, v1}, Lcom/amazon/venezia/command/h;->a(Lcom/amazon/venezia/command/w;Lcom/amazon/venezia/command/f;)V

    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/b;->d()Lcom/amazon/android/framework/task/command/l;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/amazon/android/b/f;

    invoke-direct {v0}, Lcom/amazon/android/b/f;-><init>()V

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lcom/amazon/android/framework/task/command/b;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing CommandServiceClient, unbinding service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/b;->f:Landroid/app/Application;

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/b;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/b;->b:Lcom/amazon/venezia/command/h;

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
