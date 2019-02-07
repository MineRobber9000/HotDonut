.class public final Lcom/amazon/android/framework/task/command/c;
.super Lcom/amazon/android/framework/prompt/Prompt;


# static fields
.field private static final a:Lcom/amazon/android/framework/util/KiwiLogger;


# instance fields
.field private final b:Ljava/lang/Thread;

.field private final c:Lcom/amazon/android/framework/task/command/f;

.field private final d:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "DecisionDialog"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/venezia/command/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/android/framework/prompt/Prompt;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/c;->b:Ljava/lang/Thread;

    new-instance v0, Lcom/amazon/android/framework/task/command/f;

    invoke-direct {v0, p1}, Lcom/amazon/android/framework/task/command/f;-><init>(Lcom/amazon/venezia/command/r;)V

    iput-object v0, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get info for activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/AlertDialog;Lcom/amazon/android/framework/task/command/m;I)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lcom/amazon/android/framework/task/command/m;->b:Ljava/lang/String;

    new-instance v1, Lcom/amazon/android/framework/task/command/d;

    invoke-direct {v1, p0, p2}, Lcom/amazon/android/framework/task/command/d;-><init>(Lcom/amazon/android/framework/task/command/c;Lcom/amazon/android/framework/task/command/m;)V

    invoke-virtual {p1, p3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amazon/android/framework/task/command/c;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/c;->dismiss()Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/amazon/android/framework/task/command/m;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/m;->c:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/amazon/android/framework/util/KiwiLogger;
    .locals 1

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/android/framework/task/command/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private c()Lcom/amazon/venezia/command/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/c;
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blocking while awaiting customer decision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/framework/task/command/m;

    iget-object v0, v0, Lcom/amazon/android/framework/task/command/m;->a:Lcom/amazon/venezia/command/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "Interrupted while awaiting decision, throwing decision expired!"

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/amazon/android/b/c;

    invoke-virtual {p0}, Lcom/amazon/android/framework/task/command/c;->getExpirationReason()Lcom/amazon/android/framework/prompt/d;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/framework/prompt/d;->a:Lcom/amazon/android/framework/prompt/d;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/amazon/android/framework/task/command/a;->b:Lcom/amazon/android/framework/task/command/a;

    :goto_0
    invoke-direct {v0, v1}, Lcom/amazon/android/b/c;-><init>(Lcom/amazon/android/framework/task/command/a;)V

    throw v0

    :cond_2
    sget-object v1, Lcom/amazon/android/framework/task/command/a;->a:Lcom/amazon/android/framework/task/command/a;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/amazon/venezia/command/n;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/b/c;
        }
    .end annotation

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetCustomerDecision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/c;->b:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/amazon/android/framework/task/command/c;->c()Lcom/amazon/venezia/command/n;

    move-result-object v0

    return-object v0
.end method

.method public final doCompatibilityCheck(Landroid/app/Activity;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v0, v0, Lcom/amazon/android/framework/task/command/f;->d:Lcom/amazon/android/framework/task/command/m;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/c;->a(Lcom/amazon/android/framework/task/command/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v0, v0, Lcom/amazon/android/framework/task/command/f;->e:Lcom/amazon/android/framework/task/command/m;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/c;->a(Lcom/amazon/android/framework/task/command/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v0, v0, Lcom/amazon/android/framework/task/command/f;->f:Lcom/amazon/android/framework/task/command/m;

    invoke-static {v0}, Lcom/amazon/android/framework/task/command/c;->a(Lcom/amazon/android/framework/task/command/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    if-nez v0, :cond_2

    move v0, v7

    :goto_1
    return v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/amazon/android/framework/task/command/c;->a(Landroid/app/Activity;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    move v1, v7

    :goto_2
    sget-object v2, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Single instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    move v2, v7

    :goto_3
    sget-object v3, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish on task launch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v7

    :goto_4
    sget-object v3, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No History: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    move v0, v7

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_2

    :cond_5
    move v2, v6

    goto :goto_3

    :cond_6
    move v0, v6

    goto :goto_4

    :cond_7
    move v0, v6

    goto :goto_1
.end method

.method public final doCreate(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v1, v1, Lcom/amazon/android/framework/task/command/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v2, v2, Lcom/amazon/android/framework/task/command/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v1, v1, Lcom/amazon/android/framework/task/command/f;->d:Lcom/amazon/android/framework/task/command/m;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/framework/task/command/c;->a(Landroid/app/AlertDialog;Lcom/amazon/android/framework/task/command/m;I)V

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v1, v1, Lcom/amazon/android/framework/task/command/f;->e:Lcom/amazon/android/framework/task/command/m;

    const/4 v2, -0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/framework/task/command/c;->a(Landroid/app/AlertDialog;Lcom/amazon/android/framework/task/command/m;I)V

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v1, v1, Lcom/amazon/android/framework/task/command/f;->f:Lcom/amazon/android/framework/task/command/m;

    const/4 v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/framework/task/command/c;->a(Landroid/app/AlertDialog;Lcom/amazon/android/framework/task/command/m;I)V

    return-object v0
.end method

.method protected final doExpiration(Lcom/amazon/android/framework/prompt/d;)V
    .locals 3

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/android/framework/task/command/c;->a:Lcom/amazon/android/framework/util/KiwiLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expiring Decision Dialog: Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method protected final getExpirationDurationInSeconds()J
    .locals 2

    iget-object v0, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-wide v0, v0, Lcom/amazon/android/framework/task/command/f;->c:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DecisionDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/framework/task/command/c;->c:Lcom/amazon/android/framework/task/command/f;

    iget-object v1, v1, Lcom/amazon/android/framework/task/command/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
