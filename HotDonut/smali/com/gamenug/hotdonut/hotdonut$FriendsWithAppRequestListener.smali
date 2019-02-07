.class public Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;
.super Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendsWithAppRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 17
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 615
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 616
    .local v9, "jsonArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 618
    .local v10, "l":I
    :goto_0
    new-array v6, v10, [Ljava/lang/String;

    .line 619
    .local v6, "friendidsWithApp":[Ljava/lang/String;
    new-array v7, v10, [Ljava/lang/String;

    .line 621
    .local v7, "friendnamesWithApp":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v10, :cond_1

    .line 630
    new-instance v12, Ljava/util/ArrayList;

    .line 631
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 630
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    .local v12, "returnFriendIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    .line 633
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 632
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 652
    .local v13, "returnFriendNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v6

    .line 653
    .local v2, "finalFriendidsWithApp":[Ljava/lang/String;
    move-object v3, v12

    .line 654
    .local v3, "finalReturnFriendIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v13

    .line 656
    .local v4, "finalReturnFriendNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v14, v2

    .line 657
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v15

    .line 658
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    .line 656
    invoke-static/range {v14 .. v16}, Lorg/cocos2dx/lib/Cocos2dxActivity;->friendResult(I[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 667
    .end local v2    # "finalFriendidsWithApp":[Ljava/lang/String;
    .end local v3    # "finalReturnFriendIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "finalReturnFriendNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "friendidsWithApp":[Ljava/lang/String;
    .end local v7    # "friendnamesWithApp":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "l":I
    .end local v12    # "returnFriendIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "returnFriendNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 616
    .restart local v9    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 622
    .restart local v6    # "friendidsWithApp":[Ljava/lang/String;
    .restart local v7    # "friendnamesWithApp":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "l":I
    :cond_1
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 623
    const-string v15, "uid"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 622
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "friendId":Ljava/lang/String;
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "name":Ljava/lang/String;
    aput-object v5, v6, v8

    .line 626
    aput-object v11, v7, v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 663
    .end local v5    # "friendId":Ljava/lang/String;
    .end local v6    # "friendidsWithApp":[Ljava/lang/String;
    .end local v7    # "friendnamesWithApp":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "l":I
    .end local v11    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_2
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 671
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$FriendsWithAppRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-virtual {v0}, Lcom/gamenug/hotdonut/hotdonut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 672
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

    .line 671
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 673
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 674
    return-void
.end method
