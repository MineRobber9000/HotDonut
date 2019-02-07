.class Lcom/amazon/ags/api/AmazonGamesClient$2;
.super Ljava/lang/Object;
.source "AmazonGamesClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/AmazonGamesClient;->handleSoftkeyButtonPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/api/AmazonGamesClient;


# direct methods
.method constructor <init>(Lcom/amazon/ags/api/AmazonGamesClient;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/amazon/ags/api/AmazonGamesClient$2;->this$0:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 268
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 270
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1e

    iput v2, v1, Landroid/os/Message;->what:I

    .line 271
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 273
    iget-object v2, p0, Lcom/amazon/ags/api/AmazonGamesClient$2;->this$0:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-static {v2}, Lcom/amazon/ags/api/AmazonGamesClient;->access$200(Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/client/AmazonGamesService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/ags/client/AmazonGamesService;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send softkey press to APK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
