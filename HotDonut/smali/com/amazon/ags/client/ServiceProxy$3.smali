.class Lcom/amazon/ags/client/ServiceProxy$3;
.super Landroid/os/Handler;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ags/client/ServiceProxy;->authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/ServiceProxy;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 261
    invoke-static {}, Lcom/amazon/ags/client/ServiceProxy;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Handling authorize callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 263
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "AUTH_RESULT"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "authResult":Ljava/lang/String;
    invoke-static {}, Lcom/amazon/ags/client/ServiceProxy;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v3, "AUTHORIZED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v4, Lcom/amazon/ags/client/util/YesNoMaybe;->YES:Lcom/amazon/ags/client/util/YesNoMaybe;

    invoke-static {v3, v4}, Lcom/amazon/ags/client/ServiceProxy;->access$502(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/client/util/YesNoMaybe;)Lcom/amazon/ags/client/util/YesNoMaybe;

    .line 267
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    invoke-static {v3}, Lcom/amazon/ags/client/ServiceProxy;->access$600(Lcom/amazon/ags/client/ServiceProxy;)V

    .line 269
    const-string v3, "WELCOME_BACK_TOAST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 271
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v2, :cond_0

    .line 272
    invoke-static {}, Lcom/amazon/ags/client/ServiceProxy;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Generating a welcome back toast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/amazon/ags/overlay/PopUpManager;->getInstance()Lcom/amazon/ags/overlay/PopUpManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lcom/amazon/ags/overlay/PopUpManager;->executeWelcomeBackPopUp(Landroid/widget/RemoteViews;I)V

    .line 283
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string v3, "INVALID_SESSION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v4, Lcom/amazon/ags/api/AmazonGamesStatus;->INVALID_SESSION:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-static {v3, v4}, Lcom/amazon/ags/client/ServiceProxy;->access$700(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0

    .line 278
    :cond_2
    const-string v3, "CANNOT_AUTHORIZE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v4, Lcom/amazon/ags/api/AmazonGamesStatus;->CANNOT_AUTHORIZE:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-static {v3, v4}, Lcom/amazon/ags/client/ServiceProxy;->access$700(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0

    .line 280
    :cond_3
    const-string v3, "NOT_AUTHORIZED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/amazon/ags/client/ServiceProxy$3;->this$0:Lcom/amazon/ags/client/ServiceProxy;

    sget-object v4, Lcom/amazon/ags/api/AmazonGamesStatus;->NOT_AUTHORIZED:Lcom/amazon/ags/api/AmazonGamesStatus;

    invoke-static {v3, v4}, Lcom/amazon/ags/client/ServiceProxy;->access$700(Lcom/amazon/ags/client/ServiceProxy;Lcom/amazon/ags/api/AmazonGamesStatus;)V

    goto :goto_0
.end method
