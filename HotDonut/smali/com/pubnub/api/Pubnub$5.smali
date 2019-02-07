.class Lcom/pubnub/api/Pubnub$5;
.super Lcom/pubnub/http/ResponseHandler;
.source "Pubnub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubnub/api/Pubnub;->time(Lcom/pubnub/api/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubnub/api/Pubnub;

.field final synthetic val$cb:Lcom/pubnub/api/Callback;


# direct methods
.method constructor <init>(Lcom/pubnub/api/Pubnub;Lcom/pubnub/api/Callback;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/pubnub/api/Pubnub$5;->this$0:Lcom/pubnub/api/Pubnub;

    iput-object p2, p0, Lcom/pubnub/api/Pubnub$5;->val$cb:Lcom/pubnub/api/Callback;

    invoke-direct {p0}, Lcom/pubnub/http/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/pubnub/api/Pubnub$5;->val$cb:Lcom/pubnub/api/Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/pubnub/api/Callback;->errorCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 750
    return-void
.end method

.method public handleResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/pubnub/api/Pubnub$5;->val$cb:Lcom/pubnub/api/Callback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/pubnub/api/Callback;->successCallback(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    return-void
.end method
