.class public Lcom/amazon/ags/client/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Lcom/amazon/ags/client/AmazonGamesService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "AGC"

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.amazon.ags.app.service.AmazonGamesService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.ags.app"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authenticationProxy:Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;

.field private authorizedState:Lcom/amazon/ags/client/util/YesNoMaybe;

.field private final features:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;"
        }
    .end annotation
.end field

.field private optInState:Lcom/amazon/ags/client/util/YesNoMaybe;

.field private serviceMessenger:Landroid/os/Messenger;

.field private sessionId:Ljava/lang/String;

.field private status:Lcom/amazon/ags/api/AmazonGamesStatus;

.field private final statusHandler:Landroid/os/Handler;

.field private synchronousBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/ServiceProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/EnumSet;)V
    .locals 1
    .param p1, "statusHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "features":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/amazon/ags/api/AmazonGamesFeature;>;"
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    .line 61
    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    .line 67
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 69
    sget-object v0, Lcom/amazon/ags/client/util/YesNoMaybe;->MAYBE:Lcom/amazon/ags/client/util/YesNoMaybe;

    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->optInState:Lcom/amazon/ags/client/util/YesNoMaybe;

    .line 70
    sget-object v0, Lcom/amazon/ags/client/util/YesNoMaybe;->MAYBE:Lcom/amazon/ags/client/util/YesNoMaybe;

    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->authorizedState:Lcom/amazon/ags/client/util/YesNoMaybe;

    .line 75
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->statusHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;-><init>(Lcom/amazon/ags/client/AmazonGamesService;)V

    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->authenticationProxy:Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;

    .line 78
    if-nez p2, :cond_0

    .line 79
    const-class v0, Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->features:Ljava/util/EnumSet;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/amazon/ags/client/ServiceProxy;->features:Ljava/util/EnumSet;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/ags/client/ServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->onBindChange()V

    return-void
.end method

.method static synthetic access$202(Lcom/amazon/ags/client/ServiceProxy;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/util/YesNoMaybe;)Lcom/amazon/ags/client/util/YesNoMaybe;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p1, "x1"    # Lcom/amazon/ags/client/util/YesNoMaybe;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->authorizedState:Lcom/amazon/ags/client/util/YesNoMaybe;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/ags/client/ServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->onStateChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p1, "x1"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    return-void
.end method

.method static synthetic access$802(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/util/YesNoMaybe;)Lcom/amazon/ags/client/util/YesNoMaybe;
    .locals 0
    .param p0, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p1, "x1"    # Lcom/amazon/ags/client/util/YesNoMaybe;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->optInState:Lcom/amazon/ags/client/util/YesNoMaybe;

    return-object p1
.end method

.method private authorize()V
    .locals 7

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 249
    .local v3, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v4, "msgBundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->buildFeatureList()Ljava/util/ArrayList;

    move-result-object v2

    .line 252
    .local v2, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v5, 0x19

    iput v5, v3, Landroid/os/Message;->what:I

    .line 254
    const-string v5, "FEATURE_LIST"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 256
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 258
    new-instance v0, Lcom/amazon/ags/client/ServiceProxy$3;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/ServiceProxy$3;-><init>(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 286
    .local v0, "authorizeHandler":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 289
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/amazon/ags/client/ServiceProxy;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v6, "Unable to send Message to Service: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    sget-object v5, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v5}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method private bindToAsynchronousService(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Lcom/amazon/ags/client/ServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/amazon/ags/client/ServiceProxy$1;-><init>(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 129
    .local v0, "asyncConnection":Landroid/content/ServiceConnection;
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v2

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "BindAsynchronous"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v2, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 133
    .local v1, "bound":Z
    sget-object v4, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binding result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "bound":Z
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "se":Ljava/lang/SecurityException;
    sget-object v4, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v5, "unable to bind to asynchronous service: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    sget-object v4, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v4}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method private bindToSynchronousService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v2, Lcom/amazon/ags/client/ServiceProxy$2;

    invoke-direct {v2, p0}, Lcom/amazon/ags/client/ServiceProxy$2;-><init>(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 157
    .local v2, "syncConnection":Landroid/content/ServiceConnection;
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "BindSynchronous"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "se":Ljava/lang/SecurityException;
    sget-object v3, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "unable to bind to synchronous service: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    sget-object v3, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v3}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method private buildFeatureList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy;->features:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy;->features:Ljava/util/EnumSet;

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/api/AmazonGamesFeature;

    .line 329
    .local v0, "feature":Lcom/amazon/ags/api/AmazonGamesFeature;
    invoke-virtual {v0}, Lcom/amazon/ags/api/AmazonGamesFeature;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .end local v0    # "feature":Lcom/amazon/ags/api/AmazonGamesFeature;
    :cond_0
    return-object v2
.end method

.method private changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V
    .locals 3
    .param p1, "newStatus"    # Lcom/amazon/ags/api/AmazonGamesStatus;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-eq p1, v0, :cond_0

    .line 205
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing Status from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    .line 207
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->notifyCaller()V

    .line 209
    :cond_0
    return-void
.end method

.method private createBindIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.amazon.ags.app"

    const-string v2, "com.amazon.ags.app.service.AmazonGamesService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "CLIENT_VERSION"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    return-object v0
.end method

.method private initSession()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 219
    const/16 v3, 0x18

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/amazon/ags/client/ServiceProxy;->transact(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 220
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/ags/client/ServiceProxy;->sessionId:Ljava/lang/String;

    .line 221
    sget-object v3, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/ags/client/ServiceProxy;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy;->sessionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    sget-object v3, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "Could not obtain session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1    # "reply":Landroid/os/Parcel;
    :goto_0
    return v2

    .line 226
    .restart local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v4, "Could not obtain session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAuthenticated()Z
    .locals 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->authenticationProxy:Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;

    invoke-virtual {v0}, Lcom/amazon/ags/client/authentication/AuthenticationServiceProxy;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBound()Z
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 183
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronousBinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceMessengerClient:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 186
    :cond_1
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Client is bound to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isServiceAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->createBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 100
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private notifyCaller()V
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->statusHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "statusMessage":Landroid/os/Message;
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->statusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method private onBindChange()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->INITIALIZING:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v0, v1, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->initSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->authorize()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v0, v1, :cond_0

    .line 199
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_DISCONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method private onStateChange()V
    .locals 3

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->isAuthenticated()Z

    move-result v0

    .line 236
    .local v0, "authenticated":Z
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->authorizedState:Lcom/amazon/ags/client/util/YesNoMaybe;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->YES:Lcom/amazon/ags/client/util/YesNoMaybe;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->optInState:Lcom/amazon/ags/client/util/YesNoMaybe;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->YES:Lcom/amazon/ags/client/util/YesNoMaybe;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/amazon/ags/client/ServiceProxy;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 237
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v1}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->authorizedState:Lcom/amazon/ags/client/util/YesNoMaybe;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->YES:Lcom/amazon/ags/client/util/YesNoMaybe;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->optInState:Lcom/amazon/ags/client/util/YesNoMaybe;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->NO:Lcom/amazon/ags/client/util/YesNoMaybe;

    if-ne v1, v2, :cond_0

    .line 239
    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_NOT_OPTED_IN:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v1}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "OPT_IN_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;-><init>(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/ServiceProxy$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy;->isServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy;->bindToAsynchronousService(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy;->bindToSynchronousService(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy;->registerBroadcastReceiver(Landroid/content/Context;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Amazon Games Service is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_BIND:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-direct {p0, v0}, Lcom/amazon/ags/client/ServiceProxy;->changeStatus(Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method

.method public final getStatus()Lcom/amazon/ags/api/AmazonGamesStatus;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    return-object v0
.end method

.method public final isReady()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->status:Lcom/amazon/ags/api/AmazonGamesStatus;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesStatus;->SERVICE_CONNECTED:Lcom/amazon/ags/api/AmazonGamesStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CLIENT_VERSION"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/amazon/ags/client/ServiceProxy;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    .line 308
    sget-object v0, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "Service is not bound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/amazon/ags/client/ServiceProxy;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final transact(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "reply":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 318
    sget-object v1, Lcom/amazon/ags/client/ServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "transact() was called while disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy;->synchronousBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    goto :goto_0
.end method
