.class Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;
.super Landroid/os/Handler;
.source "BaseReplyMessengerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/client/BaseReplyMessengerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandleHandler"
.end annotation


# instance fields
.field private handle:Lcom/amazon/ags/client/GCResponseHandleImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/ags/client/BaseReplyMessengerFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/ags/client/BaseReplyMessengerFactory;Lcom/amazon/ags/client/GCResponseHandleImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ags/client/GCResponseHandleImpl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;, "Lcom/amazon/ags/client/BaseReplyMessengerFactory<TT;>.ServiceHandleHandler;"
    .local p2, "handle":Lcom/amazon/ags/client/GCResponseHandleImpl;, "Lcom/amazon/ags/client/GCResponseHandleImpl<TT;>;"
    iput-object p1, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;->this$0:Lcom/amazon/ags/client/BaseReplyMessengerFactory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    invoke-static {}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constructing a ServiceHandleHandler for the outgoing asynchronous event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p2, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;->handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    .local p0, "this":Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;, "Lcom/amazon/ags/client/BaseReplyMessengerFactory<TT;>.ServiceHandleHandler;"
    iget-object v1, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;->this$0:Lcom/amazon/ags/client/BaseReplyMessengerFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->processMessage(Landroid/os/Message;)Lcom/amazon/ags/api/RequestResponse;

    move-result-object v0

    .line 47
    .local v0, "event":Lcom/amazon/ags/api/RequestResponse;, "TT;"
    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;->handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/ags/client/BaseReplyMessengerFactory;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting handle data with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/amazon/ags/client/BaseReplyMessengerFactory$ServiceHandleHandler;->handle:Lcom/amazon/ags/client/GCResponseHandleImpl;

    invoke-virtual {v1, v0}, Lcom/amazon/ags/client/GCResponseHandleImpl;->setResponse(Lcom/amazon/ags/api/RequestResponse;)V

    goto :goto_0
.end method
