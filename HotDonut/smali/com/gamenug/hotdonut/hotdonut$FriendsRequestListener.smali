.class public Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;
.super Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendsRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 687
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 688
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 690
    .local v4, "l":I
    :goto_0
    iget-object v8, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/gamenug/hotdonut/hotdonut;->access$0(Lcom/gamenug/hotdonut/hotdonut;[Ljava/lang/String;)V

    .line 691
    iget-object v8, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/gamenug/hotdonut/hotdonut;->access$1(Lcom/gamenug/hotdonut/hotdonut;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 706
    const-string v7, "select name, uid, is_app_user from user where uid in (select uid2 from friend where uid1=me()) and is_app_user = 1 order by name"

    .line 707
    .local v7, "query":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 708
    .local v6, "params":Landroid/os/Bundle;
    const-string v8, "method"

    const-string v9, "fql.query"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v8, "query"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    sget-object v8, Lcom/gamenug/hotdonut/hotdonut;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const/4 v9, 0x0

    .line 711
    new-instance v10, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;

    iget-object v11, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {v10, v11}, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    .line 710
    invoke-virtual {v8, v9, v6, v10}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 713
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "l":I
    .end local v6    # "params":Landroid/os/Bundle;
    .end local v7    # "query":Ljava/lang/String;
    :goto_2
    return-void

    .line 688
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 694
    .restart local v2    # "i":I
    .restart local v4    # "l":I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 695
    const-string v9, "uid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 694
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "friendId":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 697
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v8}, Lcom/gamenug/hotdonut/hotdonut;->access$2(Lcom/gamenug/hotdonut/hotdonut;)[Ljava/lang/String;

    move-result-object v8

    aput-object v1, v8, v2

    .line 698
    iget-object v8, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v8}, Lcom/gamenug/hotdonut/hotdonut;->access$3(Lcom/gamenug/hotdonut/hotdonut;)[Ljava/lang/String;

    move-result-object v8

    aput-object v5, v8, v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 701
    .end local v1    # "friendId":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "l":I
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_2
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Facebook Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 717
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 720
    return-void
.end method
