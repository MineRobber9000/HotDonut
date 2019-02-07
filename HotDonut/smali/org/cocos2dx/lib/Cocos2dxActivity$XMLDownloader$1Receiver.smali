.class Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Lcom/fbt/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 1177
    const-string v1, "ConnectCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connected to channel :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object v0, p1

    .line 1181
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$3;

    invoke-direct {v2, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1189
    return-void
.end method

.method public disconnectCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string v0, "DisconnectCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnected to channel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method public errorCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 1160
    const-string v1, "ErrorCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1161
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Already"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1164
    move-object v0, p1

    .line 1165
    .local v0, "name":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->access$2()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;

    invoke-direct {v2, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1173
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public presenceCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 1152
    const-string v1, "Message Received"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "myMessage":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public reconnectCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 1193
    const-string v0, "ReconnectCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reconnecting to channel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void
.end method

.method public subscribeCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 1134
    const-string v2, "Message Received1"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "msg":Ljava/lang/String;
    move-object v0, p1

    .line 1138
    .local v0, "chan":Ljava/lang/String;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;->this$1:Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;->access$2(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader;)Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/cocos2dx/lib/Cocos2dxActivity;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;

    invoke-direct {v3, p0, v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$XMLDownloader$1Receiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 1146
    const/4 v2, 0x1

    return v2
.end method
