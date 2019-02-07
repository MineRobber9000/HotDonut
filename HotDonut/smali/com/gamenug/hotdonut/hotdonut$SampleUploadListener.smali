.class public Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;
.super Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;
.source "hotdonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SampleUploadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method public constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0, p1}, Lcom/gamenug/hotdonut/hotdonut$BaseRequestListener;-><init>(Lcom/gamenug/hotdonut/hotdonut;)V

    return-void
.end method

.method static synthetic access$0(Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;)Lcom/gamenug/hotdonut/hotdonut;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 529
    :try_start_0
    const-string v3, "Facebook-Example"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {p1}, Lcom/facebook/android/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 531
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "src"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    new-instance v4, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener$1;

    invoke-direct {v4, p0}, Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener$1;-><init>(Lcom/gamenug/hotdonut/hotdonut$SampleUploadListener;)V

    invoke-virtual {v3, v4}, Lcom/gamenug/hotdonut/hotdonut;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/android/FacebookError; {:try_start_0 .. :try_end_0} :catch_1

    .line 549
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "src":Ljava/lang/String;
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "Facebook-Example"

    const-string v4, "JSON Error in response"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 547
    .local v0, "e":Lcom/facebook/android/FacebookError;
    const-string v3, "Facebook-Example"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Facebook Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
