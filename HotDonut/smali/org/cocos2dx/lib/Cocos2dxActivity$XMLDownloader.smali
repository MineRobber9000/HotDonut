.class Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;
.super Landroid/os/AsyncTask;
.source "Cocos2dxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;)Lorg/cocos2dx/lib/Cocos2dxActivity;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1205
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1206
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "channel"

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string v2, "callback"

    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;

    invoke-direct {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->pubnub:Lcom/fbt/Pubnub;

    invoke-virtual {v2, v0}, Lcom/fbt/Pubnub;->subscribe(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 1211
    :catch_0
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1213
    const-string v2, "ERROR"

    const-string v3, "While downloading"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1224
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1221
    return-void
.end method
