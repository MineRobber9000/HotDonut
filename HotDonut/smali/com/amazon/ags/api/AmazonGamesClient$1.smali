.class Lcom/amazon/ags/api/AmazonGamesClient$1;
.super Landroid/content/BroadcastReceiver;
.source "AmazonGamesClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/api/AmazonGamesClient;->enableSoftKeyButton()V
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
    .line 228
    iput-object p1, p0, Lcom/amazon/ags/api/AmazonGamesClient$1;->this$0:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameCircle softkey button pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/amazon/ags/api/AmazonGamesClient$1;->this$0:Lcom/amazon/ags/api/AmazonGamesClient;

    invoke-static {v0}, Lcom/amazon/ags/api/AmazonGamesClient;->access$100(Lcom/amazon/ags/api/AmazonGamesClient;)V

    .line 233
    return-void
.end method
