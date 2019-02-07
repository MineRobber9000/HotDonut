.class public Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;
.super Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;)Lcom/gamenug/hotdonut/hotdonut;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 825
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 826
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "last_name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "lastname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "fullname":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 832
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 833
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gamenug/hotdonut/hotdonut;->access$5(Ljava/lang/String;)V

    .line 834
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gamenug/hotdonut/hotdonut;->access$7(Ljava/lang/String;)V

    .line 835
    const-string v4, "Facebook namer"

    invoke-static {}, Lcom/gamenug/hotdonut/hotdonut;->access$4()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Lcom/gamenug/hotdonut/hotdonut;->access$4()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gamenug/hotdonut/hotdonut;->access$6()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/gamenug/hotdonut/hotdonut;->nativeSetFBNameAndID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v4, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-static {v4}, Lcom/gamenug/hotdonut/hotdonut;->access$8(Lcom/gamenug/hotdonut/hotdonut;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    iget-object v4, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/gamenug/hotdonut/hotdonut;->access$9(Lcom/gamenug/hotdonut/hotdonut;Z)V

    .line 841
    iget-object v4, p0, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    new-instance v5, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener$1;

    invoke-direct {v5, p0}, Lcom/gamenug/hotdonut/hotdonut$UserRequestListener$1;-><init>(Lcom/gamenug/hotdonut/hotdonut$UserRequestListener;)V

    invoke-virtual {v4, v5}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v1    # "fullname":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "lastname":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
