.class Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;
.super Landroid/os/AsyncTask;
.source "PurchaseObserverAmazon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/PurchaseObserverAmazon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserIdAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/amazon/inapp/purchasing/GetUserIdResponse;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;


# direct methods
.method private constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;-><init>(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    .prologue
    const/4 v4, 0x0

    .line 146
    aget-object v0, p1, v4

    .line 148
    .local v0, "getUserIdResponse":Lcom/amazon/inapp/purchasing/GetUserIdResponse;
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v2

    sget-object v3, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v2, v3, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;->this$0:Lcom/gamenug/hotdonut/PurchaseObserverAmazon;

    invoke-static {v2}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon;->access$0(Lcom/gamenug/hotdonut/PurchaseObserverAmazon;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setCurrentUser(Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 156
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 155
    :cond_0
    const-string v2, "Amazon-IAP"

    const-string v3, "onGetUserIdResponse: Unable to get user ID."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/amazon/inapp/purchasing/GetUserIdResponse;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;->doInBackground([Lcom/amazon/inapp/purchasing/GetUserIdResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gamenug/hotdonut/PurchaseObserverAmazon$GetUserIdAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
