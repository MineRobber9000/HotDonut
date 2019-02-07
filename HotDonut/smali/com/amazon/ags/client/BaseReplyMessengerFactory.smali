.class public abstract Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.super Ljava/lang/Object;
.source "BaseReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "GC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final popUpManager:Lcom/amazon/ags/overlay/PopUpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/BaseReplyMessengerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    .local p0, "this":Lcom/amazon/ags/client/BaseReplyMessengerFactory;, "Lcom/amazon/ags/client/BaseReplyMessengerFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/amazon/ags/overlay/PopUpManager;->getInstance()Lcom/amazon/ags/overlay/PopUpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->popUpManager:Lcom/amazon/ags/overlay/PopUpManager;

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getReplyHandleMessenger(Lcom/amazon/ags/client/GCResponseHandleImpl;)Landroid/os/Messenger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<TT;>;)",
            "Landroid/os/Messenger;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/amazon/ags/client/BaseReplyMessengerFactory;, "Lcom/amazon/ags/client/BaseReplyMessengerFactory<TT;>;"
    .local p1, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;-><init>(Lcom/amazon/ags/client/BaseReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method protected abstract processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation
.end method
