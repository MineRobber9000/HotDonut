.class Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ags/client/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonGamesBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/amazon/ags/client/ServiceProxy;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/ServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/ags/client/ServiceProxy;
    .param p2, "x1"    # Lcom/amazon/ags/client/ServiceProxy$1;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;-><init>(Lcom/amazon/ags/client/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "OPT_IN_STATUS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "optInStatus":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/client/ServiceProxy;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game received broadcast from service with opt-in status ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "NOT_OPTED_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->NO:Lcom/amazon/ags/client/util/YesNoMaybe;

    invoke-static {v1, v2}, Lcom/amazon/ags/client/ServiceProxy;->access$802(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/util/YesNoMaybe;)Lcom/amazon/ags/client/util/YesNoMaybe;

    .line 343
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v1}, Lcom/amazon/ags/client/ServiceProxy;->access$600(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string v1, "OPTED_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v2, Lcom/amazon/ags/client/util/YesNoMaybe;->YES:Lcom/amazon/ags/client/util/YesNoMaybe;

    invoke-static {v1, v2}, Lcom/amazon/ags/client/ServiceProxy;->access$802(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/util/YesNoMaybe;)Lcom/amazon/ags/client/util/YesNoMaybe;

    .line 346
    iget-object v1, p0, Lcom/amazon/ags/client/ServiceProxy$AmazonGamesBroadcastReceiver;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v1}, Lcom/amazon/ags/client/ServiceProxy;->access$600(Lcom/amazon/ags/client/ServiceProxy;)V

    goto :goto_0
.end method
